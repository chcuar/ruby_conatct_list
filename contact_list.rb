# Build a contact list

# √ Create a menu

# √1) Create a contact 

# √2) View All Contacts 

# √3) Exit

# The menu should loop until the user exits
#we will use a loop

@contact_list = [
  {
    ID: 1,
    Name: "Christian Cuartas",
    Phone: "801-842-4099",
    Email: "christian.cuartas@gmail.com"
},
{
  ID: 2,
  Name: "Jerry Seinfield",
  Phone: "801-123-5467",
  Email: "jerry.seinfield@gmail.com"
},
{
  ID: 3,
  Name: "Peyton Manning",
  Phone: "801-456-1818",
  Email: "peyton.manning@gmail.com"
},
{
  ID: 4,
  Name: "Drew Brees",
  Phone: "801-321-9999",
  Email: "dre.brees@gmail.com"
},
{
  ID: 5,
  Name: "Tom Brady",
  Phone: "801-842-1212",
  Email: "tom.brady@gmail.com"
}
]

def separator
  puts "*" * 100
end

def welcome
  puts "WELCOME TO CONTACT LIST"
  separator
  menu
end

def menu
  puts "Please Select One of the following:"
  puts '1) Create a Contact'
  puts '2) View All Contacts'
  puts '3) Delete a Contact'
  puts '4) Exit'
separator
  menu_options
end

def menu_options

  choice = gets.to_i
  case choice
  when 1
    create_contact
  when 2
    view_contacts
  when 3
    delete_contact
  when 4
    puts "Goodbye!"
    Exit
  else puts "invalid choice Try Again"
    menu
  end
end

def create_contact

    new_id = @contact_list.count + 1
  
    puts "Please enter the new contact's name"
    new_contact = gets.chomp.to_s
  
    puts "Please enter this contact's phone number"
    new_phone = gets.chomp.to_s

    puts "Please enter this contact's email address"
    new_email = gets.chomp.to_s
  
    new_hash = {
    ID: new_id,
    Name: new_contact,
    Phone: new_phone,
    Email: new_email
    }
  
    @contact_list << new_hash
    separator
    menu
  
end

def view_contacts
  separator
  @contact_list.each do |contact|
    puts "ID:#{contact[:ID]} Name: #{contact[:Name]} Phone: #{contact[:Phone]} Email: #{contact[:Email]}"
  end
  separator
  menu
end

def delete_contact
  separator
  @contact_list.each do |contact|
    puts "ID:#{contact[:ID]} Name: #{contact[:Name]} Phone: #{contact[:Phone]} Email: #{contact[:Email]}"
  end
  separator
  puts "Please enter the ID of the contact you want to delete"
  remove_id = gets.chomp.to_i
  @contact_list.size.times do |i|
    if remove_id == @contact_list[i][:ID]
      @contact_list.delete_at(i)
      break
    else
      next
    end
  end
  menu
end


welcome

