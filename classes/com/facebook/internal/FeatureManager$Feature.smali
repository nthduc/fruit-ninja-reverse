.class public final enum Lcom/facebook/internal/FeatureManager$Feature;
.super Ljava/lang/Enum;
.source "FeatureManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/FeatureManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Feature"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/internal/FeatureManager$Feature;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/internal/FeatureManager$Feature;

.field public static final enum AAM:Lcom/facebook/internal/FeatureManager$Feature;

.field public static final enum AppEvents:Lcom/facebook/internal/FeatureManager$Feature;

.field public static final enum ChromeCustomTabsPrefetching:Lcom/facebook/internal/FeatureManager$Feature;

.field public static final enum CodelessEvents:Lcom/facebook/internal/FeatureManager$Feature;

.field public static final enum Core:Lcom/facebook/internal/FeatureManager$Feature;

.field public static final enum CrashReport:Lcom/facebook/internal/FeatureManager$Feature;

.field public static final enum CrashShield:Lcom/facebook/internal/FeatureManager$Feature;

.field public static final enum ErrorReport:Lcom/facebook/internal/FeatureManager$Feature;

.field public static final enum EventDeactivation:Lcom/facebook/internal/FeatureManager$Feature;

.field public static final enum IgnoreAppSwitchToLoggedOut:Lcom/facebook/internal/FeatureManager$Feature;

.field public static final enum Instrument:Lcom/facebook/internal/FeatureManager$Feature;

.field public static final enum IntelligentIntegrity:Lcom/facebook/internal/FeatureManager$Feature;

.field public static final enum Login:Lcom/facebook/internal/FeatureManager$Feature;

.field public static final enum ModelRequest:Lcom/facebook/internal/FeatureManager$Feature;

.field public static final enum Monitoring:Lcom/facebook/internal/FeatureManager$Feature;

.field public static final enum Places:Lcom/facebook/internal/FeatureManager$Feature;

.field public static final enum PrivacyProtection:Lcom/facebook/internal/FeatureManager$Feature;

.field public static final enum RestrictiveDataFiltering:Lcom/facebook/internal/FeatureManager$Feature;

.field public static final enum Share:Lcom/facebook/internal/FeatureManager$Feature;

.field public static final enum SuggestedEvents:Lcom/facebook/internal/FeatureManager$Feature;

.field public static final enum ThreadCheck:Lcom/facebook/internal/FeatureManager$Feature;

.field public static final enum Unknown:Lcom/facebook/internal/FeatureManager$Feature;


# instance fields
.field private final code:I


# direct methods
.method static constructor <clinit>()V
    .registers 16

    .line 185
    new-instance v0, Lcom/facebook/internal/FeatureManager$Feature;

    const/4 v1, 0x0

    const-string v2, "Unknown"

    const/4 v3, -0x1

    invoke-direct {v0, v2, v1, v3}, Lcom/facebook/internal/FeatureManager$Feature;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/internal/FeatureManager$Feature;->Unknown:Lcom/facebook/internal/FeatureManager$Feature;

    .line 188
    new-instance v0, Lcom/facebook/internal/FeatureManager$Feature;

    const/4 v2, 0x1

    const-string v3, "Core"

    invoke-direct {v0, v3, v2, v1}, Lcom/facebook/internal/FeatureManager$Feature;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/internal/FeatureManager$Feature;->Core:Lcom/facebook/internal/FeatureManager$Feature;

    .line 190
    new-instance v0, Lcom/facebook/internal/FeatureManager$Feature;

    const/4 v3, 0x2

    const-string v4, "AppEvents"

    const/high16 v5, 0x10000

    invoke-direct {v0, v4, v3, v5}, Lcom/facebook/internal/FeatureManager$Feature;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/internal/FeatureManager$Feature;->AppEvents:Lcom/facebook/internal/FeatureManager$Feature;

    .line 191
    new-instance v0, Lcom/facebook/internal/FeatureManager$Feature;

    const/4 v4, 0x3

    const-string v5, "CodelessEvents"

    const v6, 0x10100

    invoke-direct {v0, v5, v4, v6}, Lcom/facebook/internal/FeatureManager$Feature;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/internal/FeatureManager$Feature;->CodelessEvents:Lcom/facebook/internal/FeatureManager$Feature;

    .line 192
    new-instance v0, Lcom/facebook/internal/FeatureManager$Feature;

    const/4 v5, 0x4

    const-string v6, "RestrictiveDataFiltering"

    const v7, 0x10200

    invoke-direct {v0, v6, v5, v7}, Lcom/facebook/internal/FeatureManager$Feature;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/internal/FeatureManager$Feature;->RestrictiveDataFiltering:Lcom/facebook/internal/FeatureManager$Feature;

    .line 193
    new-instance v0, Lcom/facebook/internal/FeatureManager$Feature;

    const/4 v6, 0x5

    const-string v7, "AAM"

    const v8, 0x10300

    invoke-direct {v0, v7, v6, v8}, Lcom/facebook/internal/FeatureManager$Feature;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/internal/FeatureManager$Feature;->AAM:Lcom/facebook/internal/FeatureManager$Feature;

    .line 194
    new-instance v0, Lcom/facebook/internal/FeatureManager$Feature;

    const/4 v7, 0x6

    const-string v8, "PrivacyProtection"

    const v9, 0x10400

    invoke-direct {v0, v8, v7, v9}, Lcom/facebook/internal/FeatureManager$Feature;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/internal/FeatureManager$Feature;->PrivacyProtection:Lcom/facebook/internal/FeatureManager$Feature;

    .line 195
    new-instance v0, Lcom/facebook/internal/FeatureManager$Feature;

    const/4 v8, 0x7

    const-string v9, "SuggestedEvents"

    const v10, 0x10401

    invoke-direct {v0, v9, v8, v10}, Lcom/facebook/internal/FeatureManager$Feature;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/internal/FeatureManager$Feature;->SuggestedEvents:Lcom/facebook/internal/FeatureManager$Feature;

    .line 196
    new-instance v0, Lcom/facebook/internal/FeatureManager$Feature;

    const/16 v9, 0x8

    const-string v10, "IntelligentIntegrity"

    const v11, 0x10402

    invoke-direct {v0, v10, v9, v11}, Lcom/facebook/internal/FeatureManager$Feature;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/internal/FeatureManager$Feature;->IntelligentIntegrity:Lcom/facebook/internal/FeatureManager$Feature;

    .line 197
    new-instance v0, Lcom/facebook/internal/FeatureManager$Feature;

    const/16 v10, 0x9

    const-string v11, "ModelRequest"

    const v12, 0x10403

    invoke-direct {v0, v11, v10, v12}, Lcom/facebook/internal/FeatureManager$Feature;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/internal/FeatureManager$Feature;->ModelRequest:Lcom/facebook/internal/FeatureManager$Feature;

    .line 198
    new-instance v0, Lcom/facebook/internal/FeatureManager$Feature;

    const/16 v11, 0xa

    const-string v12, "EventDeactivation"

    const v13, 0x10500

    invoke-direct {v0, v12, v11, v13}, Lcom/facebook/internal/FeatureManager$Feature;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/internal/FeatureManager$Feature;->EventDeactivation:Lcom/facebook/internal/FeatureManager$Feature;

    .line 200
    new-instance v0, Lcom/facebook/internal/FeatureManager$Feature;

    const/16 v12, 0xb

    const-string v13, "Instrument"

    const/high16 v14, 0x20000

    invoke-direct {v0, v13, v12, v14}, Lcom/facebook/internal/FeatureManager$Feature;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/internal/FeatureManager$Feature;->Instrument:Lcom/facebook/internal/FeatureManager$Feature;

    .line 201
    new-instance v0, Lcom/facebook/internal/FeatureManager$Feature;

    const/16 v13, 0xc

    const-string v14, "CrashReport"

    const v15, 0x20100

    invoke-direct {v0, v14, v13, v15}, Lcom/facebook/internal/FeatureManager$Feature;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/internal/FeatureManager$Feature;->CrashReport:Lcom/facebook/internal/FeatureManager$Feature;

    .line 202
    new-instance v0, Lcom/facebook/internal/FeatureManager$Feature;

    const/16 v14, 0xd

    const-string v15, "CrashShield"

    const v13, 0x20101

    invoke-direct {v0, v15, v14, v13}, Lcom/facebook/internal/FeatureManager$Feature;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/internal/FeatureManager$Feature;->CrashShield:Lcom/facebook/internal/FeatureManager$Feature;

    .line 203
    new-instance v0, Lcom/facebook/internal/FeatureManager$Feature;

    const/16 v13, 0xe

    const-string v15, "ThreadCheck"

    const v14, 0x20102

    invoke-direct {v0, v15, v13, v14}, Lcom/facebook/internal/FeatureManager$Feature;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/internal/FeatureManager$Feature;->ThreadCheck:Lcom/facebook/internal/FeatureManager$Feature;

    .line 204
    new-instance v0, Lcom/facebook/internal/FeatureManager$Feature;

    const-string v14, "ErrorReport"

    const/16 v15, 0xf

    const v13, 0x20200

    invoke-direct {v0, v14, v15, v13}, Lcom/facebook/internal/FeatureManager$Feature;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/internal/FeatureManager$Feature;->ErrorReport:Lcom/facebook/internal/FeatureManager$Feature;

    .line 206
    new-instance v0, Lcom/facebook/internal/FeatureManager$Feature;

    const-string v13, "Monitoring"

    const/16 v14, 0x10

    const/high16 v15, 0x30000

    invoke-direct {v0, v13, v14, v15}, Lcom/facebook/internal/FeatureManager$Feature;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/internal/FeatureManager$Feature;->Monitoring:Lcom/facebook/internal/FeatureManager$Feature;

    .line 210
    new-instance v0, Lcom/facebook/internal/FeatureManager$Feature;

    const-string v13, "Login"

    const/16 v14, 0x11

    const/high16 v15, 0x1000000

    invoke-direct {v0, v13, v14, v15}, Lcom/facebook/internal/FeatureManager$Feature;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/internal/FeatureManager$Feature;->Login:Lcom/facebook/internal/FeatureManager$Feature;

    .line 211
    new-instance v0, Lcom/facebook/internal/FeatureManager$Feature;

    const-string v13, "ChromeCustomTabsPrefetching"

    const/16 v14, 0x12

    const/high16 v15, 0x1010000

    invoke-direct {v0, v13, v14, v15}, Lcom/facebook/internal/FeatureManager$Feature;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/internal/FeatureManager$Feature;->ChromeCustomTabsPrefetching:Lcom/facebook/internal/FeatureManager$Feature;

    .line 212
    new-instance v0, Lcom/facebook/internal/FeatureManager$Feature;

    const-string v13, "IgnoreAppSwitchToLoggedOut"

    const/16 v14, 0x13

    const/high16 v15, 0x1020000

    invoke-direct {v0, v13, v14, v15}, Lcom/facebook/internal/FeatureManager$Feature;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/internal/FeatureManager$Feature;->IgnoreAppSwitchToLoggedOut:Lcom/facebook/internal/FeatureManager$Feature;

    .line 216
    new-instance v0, Lcom/facebook/internal/FeatureManager$Feature;

    const-string v13, "Share"

    const/16 v14, 0x14

    const/high16 v15, 0x2000000

    invoke-direct {v0, v13, v14, v15}, Lcom/facebook/internal/FeatureManager$Feature;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/internal/FeatureManager$Feature;->Share:Lcom/facebook/internal/FeatureManager$Feature;

    .line 220
    new-instance v0, Lcom/facebook/internal/FeatureManager$Feature;

    const-string v13, "Places"

    const/16 v14, 0x15

    const/high16 v15, 0x3000000

    invoke-direct {v0, v13, v14, v15}, Lcom/facebook/internal/FeatureManager$Feature;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/internal/FeatureManager$Feature;->Places:Lcom/facebook/internal/FeatureManager$Feature;

    const/16 v0, 0x16

    .line 184
    new-array v0, v0, [Lcom/facebook/internal/FeatureManager$Feature;

    sget-object v13, Lcom/facebook/internal/FeatureManager$Feature;->Unknown:Lcom/facebook/internal/FeatureManager$Feature;

    aput-object v13, v0, v1

    sget-object v1, Lcom/facebook/internal/FeatureManager$Feature;->Core:Lcom/facebook/internal/FeatureManager$Feature;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/internal/FeatureManager$Feature;->AppEvents:Lcom/facebook/internal/FeatureManager$Feature;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/internal/FeatureManager$Feature;->CodelessEvents:Lcom/facebook/internal/FeatureManager$Feature;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/internal/FeatureManager$Feature;->RestrictiveDataFiltering:Lcom/facebook/internal/FeatureManager$Feature;

    aput-object v1, v0, v5

    sget-object v1, Lcom/facebook/internal/FeatureManager$Feature;->AAM:Lcom/facebook/internal/FeatureManager$Feature;

    aput-object v1, v0, v6

    sget-object v1, Lcom/facebook/internal/FeatureManager$Feature;->PrivacyProtection:Lcom/facebook/internal/FeatureManager$Feature;

    aput-object v1, v0, v7

    sget-object v1, Lcom/facebook/internal/FeatureManager$Feature;->SuggestedEvents:Lcom/facebook/internal/FeatureManager$Feature;

    aput-object v1, v0, v8

    sget-object v1, Lcom/facebook/internal/FeatureManager$Feature;->IntelligentIntegrity:Lcom/facebook/internal/FeatureManager$Feature;

    aput-object v1, v0, v9

    sget-object v1, Lcom/facebook/internal/FeatureManager$Feature;->ModelRequest:Lcom/facebook/internal/FeatureManager$Feature;

    aput-object v1, v0, v10

    sget-object v1, Lcom/facebook/internal/FeatureManager$Feature;->EventDeactivation:Lcom/facebook/internal/FeatureManager$Feature;

    aput-object v1, v0, v11

    sget-object v1, Lcom/facebook/internal/FeatureManager$Feature;->Instrument:Lcom/facebook/internal/FeatureManager$Feature;

    aput-object v1, v0, v12

    sget-object v1, Lcom/facebook/internal/FeatureManager$Feature;->CrashReport:Lcom/facebook/internal/FeatureManager$Feature;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/internal/FeatureManager$Feature;->CrashShield:Lcom/facebook/internal/FeatureManager$Feature;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/internal/FeatureManager$Feature;->ThreadCheck:Lcom/facebook/internal/FeatureManager$Feature;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/internal/FeatureManager$Feature;->ErrorReport:Lcom/facebook/internal/FeatureManager$Feature;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/internal/FeatureManager$Feature;->Monitoring:Lcom/facebook/internal/FeatureManager$Feature;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/internal/FeatureManager$Feature;->Login:Lcom/facebook/internal/FeatureManager$Feature;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/internal/FeatureManager$Feature;->ChromeCustomTabsPrefetching:Lcom/facebook/internal/FeatureManager$Feature;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/internal/FeatureManager$Feature;->IgnoreAppSwitchToLoggedOut:Lcom/facebook/internal/FeatureManager$Feature;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/internal/FeatureManager$Feature;->Share:Lcom/facebook/internal/FeatureManager$Feature;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/internal/FeatureManager$Feature;->Places:Lcom/facebook/internal/FeatureManager$Feature;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sput-object v0, Lcom/facebook/internal/FeatureManager$Feature;->$VALUES:[Lcom/facebook/internal/FeatureManager$Feature;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 224
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 225
    iput p3, p0, Lcom/facebook/internal/FeatureManager$Feature;->code:I

    return-void
.end method

.method static fromInt(I)Lcom/facebook/internal/FeatureManager$Feature;
    .registers 6

    .line 305
    invoke-static {}, Lcom/facebook/internal/FeatureManager$Feature;->values()[Lcom/facebook/internal/FeatureManager$Feature;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_12

    aget-object v3, v0, v2

    .line 306
    iget v4, v3, Lcom/facebook/internal/FeatureManager$Feature;->code:I

    if-ne v4, p0, :cond_f

    return-object v3

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 311
    :cond_12
    sget-object p0, Lcom/facebook/internal/FeatureManager$Feature;->Unknown:Lcom/facebook/internal/FeatureManager$Feature;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/internal/FeatureManager$Feature;
    .registers 2

    .line 184
    const-class v0, Lcom/facebook/internal/FeatureManager$Feature;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/internal/FeatureManager$Feature;

    return-object p0
.end method

.method public static values()[Lcom/facebook/internal/FeatureManager$Feature;
    .registers 1

    .line 184
    sget-object v0, Lcom/facebook/internal/FeatureManager$Feature;->$VALUES:[Lcom/facebook/internal/FeatureManager$Feature;

    invoke-virtual {v0}, [Lcom/facebook/internal/FeatureManager$Feature;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/internal/FeatureManager$Feature;

    return-object v0
.end method


# virtual methods
.method public getParent()Lcom/facebook/internal/FeatureManager$Feature;
    .registers 3

    .line 319
    iget v0, p0, Lcom/facebook/internal/FeatureManager$Feature;->code:I

    and-int/lit16 v1, v0, 0xff

    if-lez v1, :cond_d

    and-int/lit16 v0, v0, -0x100

    .line 320
    invoke-static {v0}, Lcom/facebook/internal/FeatureManager$Feature;->fromInt(I)Lcom/facebook/internal/FeatureManager$Feature;

    move-result-object v0

    return-object v0

    :cond_d
    const v1, 0xff00

    and-int/2addr v1, v0

    if-lez v1, :cond_1b

    const/high16 v1, -0x10000

    and-int/2addr v0, v1

    .line 322
    invoke-static {v0}, Lcom/facebook/internal/FeatureManager$Feature;->fromInt(I)Lcom/facebook/internal/FeatureManager$Feature;

    move-result-object v0

    return-object v0

    :cond_1b
    const/high16 v1, 0xff0000

    and-int/2addr v1, v0

    if-lez v1, :cond_28

    const/high16 v1, -0x1000000

    and-int/2addr v0, v1

    .line 324
    invoke-static {v0}, Lcom/facebook/internal/FeatureManager$Feature;->fromInt(I)Lcom/facebook/internal/FeatureManager$Feature;

    move-result-object v0

    return-object v0

    :cond_28
    const/4 v0, 0x0

    .line 326
    invoke-static {v0}, Lcom/facebook/internal/FeatureManager$Feature;->fromInt(I)Lcom/facebook/internal/FeatureManager$Feature;

    move-result-object v0

    return-object v0
.end method

.method toKey()Ljava/lang/String;
    .registers 3

    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FBSDKFeature"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/facebook/internal/FeatureManager$Feature;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 232
    sget-object v0, Lcom/facebook/internal/FeatureManager$2;->$SwitchMap$com$facebook$internal$FeatureManager$Feature:[I

    invoke-virtual {p0}, Lcom/facebook/internal/FeatureManager$Feature;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_4e

    const-string v0, "unknown"

    goto :goto_4c

    :pswitch_e
    const-string v0, "PlacesKit"

    goto :goto_4c

    :pswitch_11
    const-string v0, "ShareKit"

    goto :goto_4c

    :pswitch_14
    const-string v0, "LoginKit"

    goto :goto_4c

    :pswitch_17
    const-string v0, "CodelessEvents"

    goto :goto_4c

    :pswitch_1a
    const-string v0, "AppEvents"

    goto :goto_4c

    :pswitch_1d
    const-string v0, "CoreKit"

    goto :goto_4c

    :pswitch_20
    const-string v0, "IgnoreAppSwitchToLoggedOut"

    goto :goto_4c

    :pswitch_23
    const-string v0, "Monitoring"

    goto :goto_4c

    :pswitch_26
    const-string v0, "ChromeCustomTabsPrefetching"

    goto :goto_4c

    :pswitch_29
    const-string v0, "EventDeactivation"

    goto :goto_4c

    :pswitch_2c
    const-string v0, "ModelRequest"

    goto :goto_4c

    :pswitch_2f
    const-string v0, "IntelligentIntegrity"

    goto :goto_4c

    :pswitch_32
    const-string v0, "SuggestedEvents"

    goto :goto_4c

    :pswitch_35
    const-string v0, "PrivacyProtection"

    goto :goto_4c

    :pswitch_38
    const-string v0, "AAM"

    goto :goto_4c

    :pswitch_3b
    const-string v0, "ErrorReport"

    goto :goto_4c

    :pswitch_3e
    const-string v0, "ThreadCheck"

    goto :goto_4c

    :pswitch_41
    const-string v0, "CrashShield"

    goto :goto_4c

    :pswitch_44
    const-string v0, "CrashReport"

    goto :goto_4c

    :pswitch_47
    const-string v0, "Instrument"

    goto :goto_4c

    :pswitch_4a
    const-string v0, "RestrictiveDataFiltering"

    :goto_4c
    return-object v0

    nop

    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_4a
        :pswitch_47
        :pswitch_44
        :pswitch_41
        :pswitch_3e
        :pswitch_3b
        :pswitch_38
        :pswitch_35
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
    .end packed-switch
.end method
