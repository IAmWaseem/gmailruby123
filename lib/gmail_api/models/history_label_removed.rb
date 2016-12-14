# This file was automatically generated by APIMATIC v2.0 ( https://apimatic.io ).

module GmailApi
  class HistoryLabelRemoved < BaseModel
    # Label IDs removed from the message.
    # @return [List of String]
    attr_accessor :label_ids

    # An email message.
    # @return [Message]
    attr_accessor :message

    # A mapping from model property names to API property names
    def self.names
      if @hash.nil?
        @hash = {}
        @hash["label_ids"] = "labelIds"
        @hash["message"] = "message"
      end
      @hash
    end

    def initialize(label_ids = nil,
                   message = nil)
      @label_ids = label_ids
      @message = message
    end

    # Creates an instance of the object from a hash
    def self.from_hash(hash)
      if hash == nil
        nil
      else
        # Extract variables from the hash
        label_ids = hash["labelIds"]
        message = Message.from_hash(hash["message"]) if hash["message"]

        # Create object from extracted values
        HistoryLabelRemoved.new(label_ids,
                                message)
      end
    end
  end
end
