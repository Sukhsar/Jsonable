public abstract class Serializable {
    public String serialize() {
        return Json.serialize(this, true); // true - to remove null fields
    } 
}
