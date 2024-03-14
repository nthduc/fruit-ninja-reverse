.class public Lcom/facebook/appevents/codeless/internal/SensitiveUserDataUtils;
.super Ljava/lang/Object;
.source "SensitiveUserDataUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isCreditCard(Landroid/widget/TextView;)Z
    .registers 8

    const-class v0, Lcom/facebook/appevents/codeless/internal/SensitiveUserDataUtils;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return v1

    .line 83
    :cond_a
    :try_start_a
    invoke-static {p0}, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->getTextOfView(Landroid/view/View;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\\s"

    const-string v2, ""

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 84
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0xc

    if-lt v0, v2, :cond_4f

    const/16 v2, 0x13

    if-le v0, v2, :cond_23

    goto :goto_4f

    :cond_23
    const/4 v2, 0x1

    sub-int/2addr v0, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_27
    if-ltz v0, :cond_4a

    .line 91
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x30

    if-lt v5, v6, :cond_49

    const/16 v6, 0x39

    if-le v5, v6, :cond_36

    goto :goto_49

    :cond_36
    add-int/lit8 v5, v5, -0x30

    if-eqz v4, :cond_43

    mul-int/lit8 v5, v5, 0x2

    const/16 v6, 0x9

    if-le v5, v6, :cond_43

    .line 99
    rem-int/lit8 v5, v5, 0xa

    add-int/2addr v5, v2

    :cond_43
    add-int/2addr v3, v5

    xor-int/lit8 v4, v4, 0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_27

    :cond_49
    :goto_49
    return v1

    .line 105
    :cond_4a
    rem-int/lit8 v3, v3, 0xa
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_4c} :catch_50

    if-nez v3, :cond_4f

    const/4 v1, 0x1

    :cond_4f
    :goto_4f
    return v1

    :catch_50
    move-exception p0

    const-class v0, Lcom/facebook/appevents/codeless/internal/SensitiveUserDataUtils;

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return v1
.end method

.method private static isEmail(Landroid/widget/TextView;)Z
    .registers 4

    const-class v0, Lcom/facebook/appevents/codeless/internal/SensitiveUserDataUtils;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return v1

    .line 56
    :cond_a
    :try_start_a
    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    move-result v0

    const/16 v2, 0x20

    if-ne v0, v2, :cond_14

    const/4 p0, 0x1

    return p0

    .line 60
    :cond_14
    invoke-static {p0}, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->getTextOfView(Landroid/view/View;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2c

    .line 61
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_21

    goto :goto_2c

    .line 64
    :cond_21
    sget-object v0, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_2b} :catch_2d

    return p0

    :cond_2c
    :goto_2c
    return v1

    :catch_2d
    move-exception p0

    const-class v0, Lcom/facebook/appevents/codeless/internal/SensitiveUserDataUtils;

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return v1
.end method

.method private static isPassword(Landroid/widget/TextView;)Z
    .registers 4

    const-class v0, Lcom/facebook/appevents/codeless/internal/SensitiveUserDataUtils;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return v1

    .line 47
    :cond_a
    :try_start_a
    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    move-result v0

    const/16 v2, 0x80

    if-ne v0, v2, :cond_14

    const/4 p0, 0x1

    return p0

    .line 51
    :cond_14
    invoke-virtual {p0}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object p0

    .line 52
    instance-of p0, p0, Landroid/text/method/PasswordTransformationMethod;
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_1a} :catch_1b

    return p0

    :catch_1b
    move-exception p0

    const-class v0, Lcom/facebook/appevents/codeless/internal/SensitiveUserDataUtils;

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return v1
.end method

.method private static isPersonName(Landroid/widget/TextView;)Z
    .registers 3

    const-class v0, Lcom/facebook/appevents/codeless/internal/SensitiveUserDataUtils;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return v1

    .line 68
    :cond_a
    :try_start_a
    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    move-result p0
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_e} :catch_14

    const/16 v0, 0x60

    if-ne p0, v0, :cond_13

    const/4 v1, 0x1

    :cond_13
    return v1

    :catch_14
    move-exception p0

    .line 69
    const-class v0, Lcom/facebook/appevents/codeless/internal/SensitiveUserDataUtils;

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return v1
.end method

.method private static isPhoneNumber(Landroid/widget/TextView;)Z
    .registers 3

    const-class v0, Lcom/facebook/appevents/codeless/internal/SensitiveUserDataUtils;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return v1

    .line 78
    :cond_a
    :try_start_a
    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    move-result p0
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_e} :catch_13

    const/4 v0, 0x3

    if-ne p0, v0, :cond_12

    const/4 v1, 0x1

    :cond_12
    return v1

    :catch_13
    move-exception p0

    .line 79
    const-class v0, Lcom/facebook/appevents/codeless/internal/SensitiveUserDataUtils;

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return v1
.end method

.method private static isPostalAddress(Landroid/widget/TextView;)Z
    .registers 3

    const-class v0, Lcom/facebook/appevents/codeless/internal/SensitiveUserDataUtils;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return v1

    .line 73
    :cond_a
    :try_start_a
    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    move-result p0
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_e} :catch_14

    const/16 v0, 0x70

    if-ne p0, v0, :cond_13

    const/4 v1, 0x1

    :cond_13
    return v1

    :catch_14
    move-exception p0

    .line 74
    const-class v0, Lcom/facebook/appevents/codeless/internal/SensitiveUserDataUtils;

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return v1
.end method

.method public static isSensitiveUserData(Landroid/view/View;)Z
    .registers 3

    const-class v0, Lcom/facebook/appevents/codeless/internal/SensitiveUserDataUtils;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return v1

    .line 34
    :cond_a
    :try_start_a
    instance-of v0, p0, Landroid/widget/TextView;

    if-eqz v0, :cond_35

    .line 35
    check-cast p0, Landroid/widget/TextView;

    .line 36
    invoke-static {p0}, Lcom/facebook/appevents/codeless/internal/SensitiveUserDataUtils;->isPassword(Landroid/widget/TextView;)Z

    move-result v0

    if-nez v0, :cond_34

    .line 37
    invoke-static {p0}, Lcom/facebook/appevents/codeless/internal/SensitiveUserDataUtils;->isCreditCard(Landroid/widget/TextView;)Z

    move-result v0

    if-nez v0, :cond_34

    .line 38
    invoke-static {p0}, Lcom/facebook/appevents/codeless/internal/SensitiveUserDataUtils;->isPersonName(Landroid/widget/TextView;)Z

    move-result v0

    if-nez v0, :cond_34

    .line 39
    invoke-static {p0}, Lcom/facebook/appevents/codeless/internal/SensitiveUserDataUtils;->isPostalAddress(Landroid/widget/TextView;)Z

    move-result v0

    if-nez v0, :cond_34

    .line 40
    invoke-static {p0}, Lcom/facebook/appevents/codeless/internal/SensitiveUserDataUtils;->isPhoneNumber(Landroid/widget/TextView;)Z

    move-result v0

    if-nez v0, :cond_34

    .line 41
    invoke-static {p0}, Lcom/facebook/appevents/codeless/internal/SensitiveUserDataUtils;->isEmail(Landroid/widget/TextView;)Z

    move-result p0
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_32} :catch_36

    if-eqz p0, :cond_35

    :cond_34
    const/4 v1, 0x1

    :cond_35
    return v1

    :catch_36
    move-exception p0

    .line 43
    const-class v0, Lcom/facebook/appevents/codeless/internal/SensitiveUserDataUtils;

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return v1
.end method
