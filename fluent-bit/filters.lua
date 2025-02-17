function extract_filename(tag, timestamp, record)
    local filename = record['filename']
    if filename ~= nil then
        -- Handle both /var/log/file.log and /var/log/subdir/file.log
        local extracted = filename:match("([^/]+%.log)$")  -- Match the last segment ending with .log
        if extracted then
            record['filename'] = extracted
        end
    end
    return 2, timestamp, record
end