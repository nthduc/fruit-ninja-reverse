.class public Lcom/facebook/share/widget/GameRequestDialog;
.super Lcom/facebook/internal/FacebookDialogBase;
.source "GameRequestDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/share/widget/GameRequestDialog$WebHandler;,
        Lcom/facebook/share/widget/GameRequestDialog$ChromeCustomTabHandler;,
        Lcom/facebook/share/widget/GameRequestDialog$Result;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/internal/FacebookDialogBase<",
        "Lcom/facebook/share/model/GameRequestContent;",
        "Lcom/facebook/share/widget/GameRequestDialog$Result;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_REQUEST_CODE:I

.field private static final GAME_REQUEST_DIALOG:Ljava/lang/String; = "apprequests"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 94
    sget-object v0, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->GameRequest:Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    .line 95
    invoke-virtual {v0}, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->toRequestCode()I

    move-result v0

    sput v0, Lcom/facebook/share/widget/GameRequestDialog;->DEFAULT_REQUEST_CODE:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .registers 3

    .line 151
    sget v0, Lcom/facebook/share/widget/GameRequestDialog;->DEFAULT_REQUEST_CODE:I

    invoke-direct {p0, p1, v0}, Lcom/facebook/internal/FacebookDialogBase;-><init>(Landroid/app/Activity;I)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Fragment;)V
    .registers 3

    .line 169
    new-instance v0, Lcom/facebook/internal/FragmentWrapper;

    invoke-direct {v0, p1}, Lcom/facebook/internal/FragmentWrapper;-><init>(Landroid/app/Fragment;)V

    invoke-direct {p0, v0}, Lcom/facebook/share/widget/GameRequestDialog;-><init>(Lcom/facebook/internal/FragmentWrapper;)V

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/Fragment;)V
    .registers 3

    .line 160
    new-instance v0, Lcom/facebook/internal/FragmentWrapper;

    invoke-direct {v0, p1}, Lcom/facebook/internal/FragmentWrapper;-><init>(Landroidx/fragment/app/Fragment;)V

    invoke-direct {p0, v0}, Lcom/facebook/share/widget/GameRequestDialog;-><init>(Lcom/facebook/internal/FragmentWrapper;)V

    return-void
.end method

.method private constructor <init>(Lcom/facebook/internal/FragmentWrapper;)V
    .registers 3

    .line 173
    sget v0, Lcom/facebook/share/widget/GameRequestDialog;->DEFAULT_REQUEST_CODE:I

    invoke-direct {p0, p1, v0}, Lcom/facebook/internal/FacebookDialogBase;-><init>(Lcom/facebook/internal/FragmentWrapper;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/facebook/share/widget/GameRequestDialog;)Landroid/app/Activity;
    .registers 1

    .line 51
    invoke-virtual {p0}, Lcom/facebook/share/widget/GameRequestDialog;->getActivityContext()Landroid/app/Activity;

    move-result-object p0

    return-object p0
.end method

.method public static canShow()Z
    .registers 1

    const/4 v0, 0x1

    return v0
.end method

.method public static show(Landroid/app/Activity;Lcom/facebook/share/model/GameRequestContent;)V
    .registers 3

    .line 114
    new-instance v0, Lcom/facebook/share/widget/GameRequestDialog;

    invoke-direct {v0, p0}, Lcom/facebook/share/widget/GameRequestDialog;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, p1}, Lcom/facebook/share/widget/GameRequestDialog;->show(Ljava/lang/Object;)V

    return-void
.end method

.method public static show(Landroid/app/Fragment;Lcom/facebook/share/model/GameRequestContent;)V
    .registers 3

    .line 137
    new-instance v0, Lcom/facebook/internal/FragmentWrapper;

    invoke-direct {v0, p0}, Lcom/facebook/internal/FragmentWrapper;-><init>(Landroid/app/Fragment;)V

    invoke-static {v0, p1}, Lcom/facebook/share/widget/GameRequestDialog;->show(Lcom/facebook/internal/FragmentWrapper;Lcom/facebook/share/model/GameRequestContent;)V

    return-void
.end method

.method public static show(Landroidx/fragment/app/Fragment;Lcom/facebook/share/model/GameRequestContent;)V
    .registers 3

    .line 125
    new-instance v0, Lcom/facebook/internal/FragmentWrapper;

    invoke-direct {v0, p0}, Lcom/facebook/internal/FragmentWrapper;-><init>(Landroidx/fragment/app/Fragment;)V

    invoke-static {v0, p1}, Lcom/facebook/share/widget/GameRequestDialog;->show(Lcom/facebook/internal/FragmentWrapper;Lcom/facebook/share/model/GameRequestContent;)V

    return-void
.end method

.method private static show(Lcom/facebook/internal/FragmentWrapper;Lcom/facebook/share/model/GameRequestContent;)V
    .registers 3

    .line 142
    new-instance v0, Lcom/facebook/share/widget/GameRequestDialog;

    invoke-direct {v0, p0}, Lcom/facebook/share/widget/GameRequestDialog;-><init>(Lcom/facebook/internal/FragmentWrapper;)V

    invoke-virtual {v0, p1}, Lcom/facebook/share/widget/GameRequestDialog;->show(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected createBaseAppCall()Lcom/facebook/internal/AppCall;
    .registers 3

    .line 206
    new-instance v0, Lcom/facebook/internal/AppCall;

    invoke-virtual {p0}, Lcom/facebook/share/widget/GameRequestDialog;->getRequestCode()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/facebook/internal/AppCall;-><init>(I)V

    return-object v0
.end method

.method protected getOrderedModeHandlers()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/internal/FacebookDialogBase<",
            "Lcom/facebook/share/model/GameRequestContent;",
            "Lcom/facebook/share/widget/GameRequestDialog$Result;",
            ">.ModeHandler;>;"
        }
    .end annotation

    .line 211
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 212
    new-instance v1, Lcom/facebook/share/widget/GameRequestDialog$ChromeCustomTabHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/facebook/share/widget/GameRequestDialog$ChromeCustomTabHandler;-><init>(Lcom/facebook/share/widget/GameRequestDialog;Lcom/facebook/share/widget/GameRequestDialog$1;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    new-instance v1, Lcom/facebook/share/widget/GameRequestDialog$WebHandler;

    invoke-direct {v1, p0, v2}, Lcom/facebook/share/widget/GameRequestDialog$WebHandler;-><init>(Lcom/facebook/share/widget/GameRequestDialog;Lcom/facebook/share/widget/GameRequestDialog$1;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method protected registerCallbackImpl(Lcom/facebook/internal/CallbackManagerImpl;Lcom/facebook/FacebookCallback;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/internal/CallbackManagerImpl;",
            "Lcom/facebook/FacebookCallback<",
            "Lcom/facebook/share/widget/GameRequestDialog$Result;",
            ">;)V"
        }
    .end annotation

    if-nez p2, :cond_4

    const/4 p2, 0x0

    goto :goto_a

    .line 179
    :cond_4
    new-instance v0, Lcom/facebook/share/widget/GameRequestDialog$1;

    invoke-direct {v0, p0, p2, p2}, Lcom/facebook/share/widget/GameRequestDialog$1;-><init>(Lcom/facebook/share/widget/GameRequestDialog;Lcom/facebook/FacebookCallback;Lcom/facebook/FacebookCallback;)V

    move-object p2, v0

    .line 194
    :goto_a
    invoke-virtual {p0}, Lcom/facebook/share/widget/GameRequestDialog;->getRequestCode()I

    move-result v0

    new-instance v1, Lcom/facebook/share/widget/GameRequestDialog$2;

    invoke-direct {v1, p0, p2}, Lcom/facebook/share/widget/GameRequestDialog$2;-><init>(Lcom/facebook/share/widget/GameRequestDialog;Lcom/facebook/share/internal/ResultProcessor;)V

    .line 193
    invoke-virtual {p1, v0, v1}, Lcom/facebook/internal/CallbackManagerImpl;->registerCallback(ILcom/facebook/internal/CallbackManagerImpl$Callback;)V

    return-void
.end method
