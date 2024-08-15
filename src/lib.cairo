#[derive(Drop)]
struct User {
    id:i32,
    name: felt252
}

trait UserTrait {
    fn get_name(self: @User) -> felt252;
}

impl UserTraitImpl of UserTrait{
    fn get_name(self: @User) -> felt252{
        return *self.name;
    }
}

fn main(){
    let user = User {id:22, name:'daniel kakai'};
    
    println!("{}", user.get_name());
}
