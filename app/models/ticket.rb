class Ticket < ActiveRecord::Base
    belongs_to :project
    validates :title, presence: true,
                    length: { minimum: 5 }
    validates :text, presence: true,
                    length: { minimum: 5 }
    validates :priority, presence: true
    attr_accessor :delete_attachment
    before_save { attachment.clear if delete_attachment == '1' }
   # before_validation { attachment.clear if delete_attachment== '1' }
    has_attached_file :attachment, styles: {thumbnail: "60x60#"}
    validates :attachment, :attachment_presence => false
    validates_attachment :attachment, :content_type => { :content_type => ["image/jpeg", "image/gif", "image/png",  "application/pdf","application/vnd.ms-excel",     
             "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet",
             "application/msword", 
             "application/vnd.openxmlformats-officedocument.wordprocessingml.document",] }
end
