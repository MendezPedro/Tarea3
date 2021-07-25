class Post < ApplicationRecord
    validates :title, :image_url, :content, presence: true

    before_save :erase_animal

    def erase_animal
        self.content = self.content.remove('animal')
        #metodo pro que no funciona
        #self.content = self.content.split.reduce([]) {|memo,  value| memo.push
        #(value) if value != 'animal'; memo}.join(" ")
    end
end
