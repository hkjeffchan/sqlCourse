from firebase_admin import firestore
import firebase_admin
from firebase_admin import credentials

cred = credentials.Certificate("serviceAccountKey.json")
firebase_admin.initialize_app(cred)

firestore_client = firestore.client()

coll_ref = firestore_client.collection('student')

docs = coll_ref.stream()
for doc in docs:
    print(f'{doc.id} => {doc.to_dict()}')
