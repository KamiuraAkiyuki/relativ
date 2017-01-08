json.extract! md_note, :id, :title, :content, :created_at, :updated_at
json.url md_note_url(md_note, format: :json)