function Validator(Option) {
    let FormValue = document.querySelector(Option.form)
    function ProcessValidate(SelectedElement, c) {
        let ErrorEmpty = c.Validate.IsTyping(SelectedElement.value)
        let ErrorIncorrect = c.Validate.IsCorrect(SelectedElement.value)
        if (ErrorEmpty !== undefined) {
            let ShowErrorMessage = SelectedElement.parentElement.querySelector(Option.labelValidate)
            ShowErrorMessage.classList.add('text-warning')
            ShowErrorMessage.innerText = ErrorEmpty
        }else if(ErrorIncorrect !== true){
            let NoticeMessage = SelectedElement.parentElement.querySelector(Option.labelValidate)
            NoticeMessage.classList.add("text-warning")
            NoticeMessage.innerText = ErrorIncorrect
        }
        SelectedElement.oninput = () => {
            let ShowErrorMessage = SelectedElement.parentElement.querySelector(Option.labelValidate)
            ShowErrorMessage.innerHTML = ''
        }
    }
    if(FormValue) {
        Option.checkValidate.forEach((c) => {
            let SelectedElement = document.querySelector(c.Value)
            SelectedElement.onblur = () => {
                ProcessValidate(SelectedElement, c)
            }
        })

        FormValue.onsubmit = (e) => {
            let IsValidated = true
            Option.checkValidate.forEach((c)=>{
                let Element = document.querySelector(c.Value)
                let IsUndefined = c.Validate.IsTyping(Element.value)
                let IsCorrectRule = c.Validate.IsCorrect(Element.value)
                if(IsUndefined !== undefined && IsCorrectRule !== true){
                        ProcessValidate(Element,c)
                        IsValidated = false
                }
            })
            if(!IsValidated){
                e.preventDefault()
            }

        }
    }
}
Validator.isName = function (Name) {
    return {
        Value:Name,
        Validate: {
                IsTyping: (Value) => {
                    return Value.trim() ? undefined : "Vui lòng nhập đầy đủ tên của bạn"
                },
                IsCorrect: (Value) => {
                    return true
                }
        }
    }
}
Validator.isEmail = function (Email) {
    return {
        Value:Email,
        Validate:{
               IsTyping :(Value) => {return Value.trim() ? undefined : "Trường này là bắt buộc !"},
               IsCorrect : (Value)=> {
                   let RegexEmail = /^\S+@\S+\.\S+$/
                   return RegexEmail.test(Value) ? true : "Trường này bạn cần nhập Email !"
               }
        }
    }
}
Validator.isPassword = function (IsSelect) {
    return {
        Value :IsSelect,
        Validate: {
               IsTyping :(Value) => {return Value.trim() ? undefined : "Trường này là bắt buộc !"},
               IsCorrect : (Value) => {
                   let PasswordRegex =/^.{8,}$/
                   return  PasswordRegex.test(Value) ? true : "Mật khẩu của bạn phải đủ 8 kí tự"
               }
        }
    }
}
Validator.isPhoneNumber = function (IsSelect) {
    return {
        Value: IsSelect,
        Validate:{
                IsTyping :(Value) => {return Value.trim() ? undefined : "Trường này là bắt buộc !"},
                IsCorrect: (Value) => {
                    let PhoneRegex = /^\+?[0-9][0-9]{7,14}$/
                    return PhoneRegex.test(Value) ? true : "Số điện thoại sai định dạng !"
                }
        }
    }
}
Validator.isAddress = function (IsSelect) {
    return {
        Value:IsSelect,
        Validate:{
                IsTyping:(Value) => {return Value.trim() ? undefined : "Trường này là bắt buộc !"},
                IsCorrect:(Value) =>{return  true}
            }
    }
}
