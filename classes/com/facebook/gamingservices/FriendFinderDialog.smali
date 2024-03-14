.class public Lcom/facebook/gamingservices/FriendFinderDialog;
.super Lcom/facebook/internal/FacebookDialogBase;
.source "FriendFinderDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/gamingservices/FriendFinderDialog$Result;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/internal/FacebookDialogBase<",
        "Ljava/lang/Void;",
        "Lcom/facebook/gamingservices/FriendFinderDialog$Result;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_REQUEST_CODE:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 38
    sget-object v0, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->GamingFriendFinder:Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    .line 39
    invoke-virtual {v0}, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->toRequestCode()I

    move-result v0

    sput v0, Lcom/facebook/gamingservices/FriendFinderDialog;->DEFAULT_REQUEST_CODE:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .registers 3

    .line 46
    sget v0, Lcom/facebook/gamingservices/FriendFinderDialog;->DEFAULT_REQUEST_CODE:I

    invoke-direct {p0, p1, v0}, Lcom/facebook/internal/FacebookDialogBase;-><init>(Landroid/app/Activity;I)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Fragment;)V
    .registers 3

    .line 54
    new-instance v0, Lcom/facebook/internal/FragmentWrapper;

    invoke-direct {v0, p1}, Lcom/facebook/internal/FragmentWrapper;-><init>(Landroid/app/Fragment;)V

    sget p1, Lcom/facebook/gamingservices/FriendFinderDialog;->DEFAULT_REQUEST_CODE:I

    invoke-direct {p0, v0, p1}, Lcom/facebook/internal/FacebookDialogBase;-><init>(Lcom/facebook/internal/FragmentWrapper;I)V

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/Fragment;)V
    .registers 3

    .line 62
    new-instance v0, Lcom/facebook/internal/FragmentWrapper;

    invoke-direct {v0, p1}, Lcom/facebook/internal/FragmentWrapper;-><init>(Landroidx/fragment/app/Fragment;)V

    sget p1, Lcom/facebook/gamingservices/FriendFinderDialog;->DEFAULT_REQUEST_CODE:I

    invoke-direct {p0, v0, p1}, Lcom/facebook/internal/FacebookDialogBase;-><init>(Lcom/facebook/internal/FragmentWrapper;I)V

    return-void
.end method


# virtual methods
.method protected createBaseAppCall()Lcom/facebook/internal/AppCall;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getOrderedModeHandlers()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/internal/FacebookDialogBase<",
            "Ljava/lang/Void;",
            "Lcom/facebook/gamingservices/FriendFinderDialog$Result;",
            ">.ModeHandler;>;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method protected registerCallbackImpl(Lcom/facebook/internal/CallbackManagerImpl;Lcom/facebook/FacebookCallback;)V
    .registers 5

    .line 94
    invoke-virtual {p0}, Lcom/facebook/gamingservices/FriendFinderDialog;->getRequestCode()I

    move-result v0

    new-instance v1, Lcom/facebook/gamingservices/FriendFinderDialog$1;

    invoke-direct {v1, p0, p2}, Lcom/facebook/gamingservices/FriendFinderDialog$1;-><init>(Lcom/facebook/gamingservices/FriendFinderDialog;Lcom/facebook/FacebookCallback;)V

    .line 93
    invoke-virtual {p1, v0, v1}, Lcom/facebook/internal/CallbackManagerImpl;->registerCallback(ILcom/facebook/internal/CallbackManagerImpl$Callback;)V

    return-void
.end method

.method public show()V
    .registers 1

    .line 67
    invoke-virtual {p0}, Lcom/facebook/gamingservices/FriendFinderDialog;->showImpl()V

    return-void
.end method

.method public bridge synthetic show(Ljava/lang/Object;)V
    .registers 2

    .line 36
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/facebook/gamingservices/FriendFinderDialog;->show(Ljava/lang/Void;)V

    return-void
.end method

.method public show(Ljava/lang/Void;)V
    .registers 2

    .line 72
    invoke-virtual {p0}, Lcom/facebook/gamingservices/FriendFinderDialog;->showImpl()V

    return-void
.end method

.method protected showImpl()V
    .registers 4

    .line 77
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    if-eqz v0, :cond_34

    .line 78
    invoke-virtual {v0}, Lcom/facebook/AccessToken;->isExpired()Z

    move-result v1

    if-nez v1, :cond_34

    .line 83
    invoke-virtual {v0}, Lcom/facebook/AccessToken;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://fb.gg/me/friendfinder/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 86
    new-instance v1, Landroid/content/Intent;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 87
    invoke-virtual {p0}, Lcom/facebook/gamingservices/FriendFinderDialog;->getRequestCode()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/facebook/gamingservices/FriendFinderDialog;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    .line 79
    :cond_34
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "Attempted to open GamingServices FriendFinder with an invalid access token"

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
