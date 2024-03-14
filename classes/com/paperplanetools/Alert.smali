.class public Lcom/paperplanetools/Alert;
.super Ljava/lang/Object;
.source "Alert.java"


# static fields
.field private static final BUTTON_CALLBACK:Ljava/lang/String; = "AlertAndroid_OnButtonClick"

.field private static final CANCEL_CALLBACK:Ljava/lang/String; = "AlertAndroid_OnCancel"

.field private static final DISMISS_CALLBACK:Ljava/lang/String; = "AlertAndroid_OnDismiss"

.field private static final RESULT_ALREADY_EXISTS:I = 0x1

.field private static final RESULT_ERROR:I = 0x3

.field private static final RESULT_NOT_EXISTS:I = 0x2

.field private static final RESULT_SUCCESS:I

.field private static alertBuilder:Lcom/paperplanetools/AlertBuilder;

.field private static alertDialog:Landroid/app/AlertDialog;

.field private static unityGameObjectName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/app/AlertDialog;
    .registers 1

    .line 13
    sget-object v0, Lcom/paperplanetools/Alert;->alertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$002(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .registers 1

    .line 13
    sput-object p0, Lcom/paperplanetools/Alert;->alertDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    .line 13
    sget-object v0, Lcom/paperplanetools/Alert;->unityGameObjectName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()Lcom/paperplanetools/AlertBuilder;
    .registers 1

    .line 13
    sget-object v0, Lcom/paperplanetools/Alert;->alertBuilder:Lcom/paperplanetools/AlertBuilder;

    return-object v0
.end method

.method static synthetic access$202(Lcom/paperplanetools/AlertBuilder;)Lcom/paperplanetools/AlertBuilder;
    .registers 1

    .line 13
    sput-object p0, Lcom/paperplanetools/Alert;->alertBuilder:Lcom/paperplanetools/AlertBuilder;

    return-object p0
.end method

.method public static dismiss()I
    .registers 2

    .line 107
    sget-object v0, Lcom/paperplanetools/Alert;->alertBuilder:Lcom/paperplanetools/AlertBuilder;

    if-nez v0, :cond_6

    const/4 v0, 0x2

    return v0

    .line 110
    :cond_6
    sget-object v0, Lcom/paperplanetools/Alert;->alertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_15

    .line 111
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 112
    new-instance v1, Lcom/paperplanetools/Alert$2;

    invoke-direct {v1}, Lcom/paperplanetools/Alert$2;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_18

    :cond_15
    const/4 v0, 0x0

    .line 118
    sput-object v0, Lcom/paperplanetools/Alert;->alertBuilder:Lcom/paperplanetools/AlertBuilder;

    :goto_18
    const/4 v0, 0x0

    return v0
.end method

.method public static initBuilder(Ljava/lang/String;)I
    .registers 2

    .line 28
    sget-object v0, Lcom/paperplanetools/Alert;->alertBuilder:Lcom/paperplanetools/AlertBuilder;

    if-eqz v0, :cond_6

    const/4 p0, 0x1

    return p0

    .line 31
    :cond_6
    sput-object p0, Lcom/paperplanetools/Alert;->unityGameObjectName:Ljava/lang/String;

    .line 32
    new-instance p0, Lcom/paperplanetools/AlertBuilder;

    invoke-direct {p0}, Lcom/paperplanetools/AlertBuilder;-><init>()V

    sput-object p0, Lcom/paperplanetools/Alert;->alertBuilder:Lcom/paperplanetools/AlertBuilder;

    const/4 p0, 0x0

    return p0
.end method

.method public static setButton(ILjava/lang/String;)I
    .registers 3

    .line 66
    sget-object v0, Lcom/paperplanetools/Alert;->alertBuilder:Lcom/paperplanetools/AlertBuilder;

    if-nez v0, :cond_6

    const/4 p0, 0x2

    return p0

    .line 70
    :cond_6
    iget-object v0, v0, Lcom/paperplanetools/AlertBuilder;->buttons:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    return p0
.end method

.method public static setCancelable(Z)I
    .registers 2

    .line 40
    sget-object v0, Lcom/paperplanetools/Alert;->alertBuilder:Lcom/paperplanetools/AlertBuilder;

    if-nez v0, :cond_6

    const/4 p0, 0x2

    return p0

    .line 43
    :cond_6
    iput-boolean p0, v0, Lcom/paperplanetools/AlertBuilder;->cancelable:Z

    const/4 p0, 0x0

    return p0
.end method

.method public static setMessage(Ljava/lang/String;)I
    .registers 2

    .line 57
    sget-object v0, Lcom/paperplanetools/Alert;->alertBuilder:Lcom/paperplanetools/AlertBuilder;

    if-nez v0, :cond_6

    const/4 p0, 0x2

    return p0

    .line 60
    :cond_6
    iput-object p0, v0, Lcom/paperplanetools/AlertBuilder;->message:Ljava/lang/String;

    const/4 p0, 0x0

    return p0
.end method

.method public static setTitle(Ljava/lang/String;)I
    .registers 2

    .line 48
    sget-object v0, Lcom/paperplanetools/Alert;->alertBuilder:Lcom/paperplanetools/AlertBuilder;

    if-nez v0, :cond_6

    const/4 p0, 0x2

    return p0

    .line 51
    :cond_6
    iput-object p0, v0, Lcom/paperplanetools/AlertBuilder;->title:Ljava/lang/String;

    const/4 p0, 0x0

    return p0
.end method

.method public static show()I
    .registers 2

    .line 76
    sget-object v0, Lcom/paperplanetools/Alert;->alertBuilder:Lcom/paperplanetools/AlertBuilder;

    if-nez v0, :cond_6

    const/4 v0, 0x2

    return v0

    .line 80
    :cond_6
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 81
    new-instance v1, Lcom/paperplanetools/Alert$1;

    invoke-direct {v1, v0}, Lcom/paperplanetools/Alert$1;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    return v0
.end method
