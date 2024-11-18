from passlib.context import CryptContext

# Initialize the password hashing context
pwd_context = CryptContext(schemes=["bcrypt"], deprecated="auto")

# Input password
password = "audy1"

# Hash the password
hashed_password = pwd_context.hash(password)

# Print the hashed password
print(f"Hashed Password: {hashed_password}")
