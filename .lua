local car = {
    Bike = { Dictionary = "epsilon_cars", X = 0, Width = 431, Height = 228 },
    Car = { Dictionary = "epsilon_cars", X = 195, Width = 228, Height = 228 },
}

---@type Window
function RageUI.Window.car(Bike, Car)
    ---@type table
    local CurrentMenu = RageUI.CurrentMenu;
    if CurrentMenu ~= nil then
        if CurrentMenu() then
            if Bike < 0 or Bike > 21 then
                Bike = 0
            end
            if Car < 0 or Car > 23 then
                Car = 0
            end
            if Bike == 21 then
                Bike = "eps3carbon"
            else
                Bike = "eps3carbon"
            end
            if Car >= 21 then
                Car = "eps3vacca"
            else
                Car = "eps3vacca"
            end
            RenderSprite(car.Background.Dictionary, car.Background.Texture, CurrentMenu.X, CurrentMenu.Y + CurrentMenu.SubtitleHeight + RageUI.ItemOffset, car.Background.Width + (CurrentMenu.WidthOffset / 1), car.Background.Height)
            RenderSprite(car.Car.Dictionary, Car, CurrentMenu.X + car.Car.X + (CurrentMenu.WidthOffset / 2), CurrentMenu.Y + CurrentMenu.SubtitleHeight + RageUI.ItemOffset, car.Car.Width, car.Car.Height)
            RenderSprite(car.Bike.Dictionary, Bike, CurrentMenu.X + car.Bike.X + (CurrentMenu.WidthOffset / 2), CurrentMenu.Y + CurrentMenu.SubtitleHeight + RageUI.ItemOffset, car.Bike.Width, car.Bike.Height)
            RageUI.ItemOffset = RageUI.ItemOffset + car.Background.Height
        end
    end
end
