import xml.etree.ElementTree as ET

president_data = ET.parse('USPresidents.xml')
birthday_data = ET.parse('PresidentBirthdays.xml')

root_president = president_data.getroot()
root_birthday = birthday_data.getroot()

root_birthday.remove('name')

# print ET.tostring(root_president)
# print ET.tostring(root_birthday)
