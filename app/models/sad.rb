class Sad < ApplicationRecord
    after_create_commit { MessageBroadcastJob.perform_later self }
end
