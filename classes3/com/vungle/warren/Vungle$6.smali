.class final Lcom/vungle/warren/Vungle$6;
.super Ljava/lang/Object;
.source "Vungle.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/Vungle;->setIncentivizedFields(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$body:Ljava/lang/String;

.field final synthetic val$close:Ljava/lang/String;

.field final synthetic val$keepWatching:Ljava/lang/String;

.field final synthetic val$serviceLocator:Lcom/vungle/warren/ServiceLocator;

.field final synthetic val$title:Ljava/lang/String;

.field final synthetic val$userID:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vungle/warren/ServiceLocator;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 635
    iput-object p1, p0, Lcom/vungle/warren/Vungle$6;->val$serviceLocator:Lcom/vungle/warren/ServiceLocator;

    iput-object p2, p0, Lcom/vungle/warren/Vungle$6;->val$title:Ljava/lang/String;

    iput-object p3, p0, Lcom/vungle/warren/Vungle$6;->val$body:Ljava/lang/String;

    iput-object p4, p0, Lcom/vungle/warren/Vungle$6;->val$keepWatching:Ljava/lang/String;

    iput-object p5, p0, Lcom/vungle/warren/Vungle$6;->val$close:Ljava/lang/String;

    iput-object p6, p0, Lcom/vungle/warren/Vungle$6;->val$userID:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 638
    invoke-static {}, Lcom/vungle/warren/Vungle;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_10

    .line 639
    # getter for: Lcom/vungle/warren/Vungle;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/vungle/warren/Vungle;->access$1400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Vungle is not initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 643
    :cond_10
    iget-object v0, p0, Lcom/vungle/warren/Vungle$6;->val$serviceLocator:Lcom/vungle/warren/ServiceLocator;

    const-class v1, Lcom/vungle/warren/persistence/Repository;

    invoke-virtual {v0, v1}, Lcom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/persistence/Repository;

    .line 645
    const-class v1, Lcom/vungle/warren/model/Cookie;

    const-string v2, "incentivizedTextSetByPub"

    invoke-virtual {v0, v2, v1}, Lcom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lcom/vungle/warren/persistence/FutureResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/warren/model/Cookie;

    if-nez v1, :cond_2f

    .line 647
    new-instance v1, Lcom/vungle/warren/model/Cookie;

    invoke-direct {v1, v2}, Lcom/vungle/warren/model/Cookie;-><init>(Ljava/lang/String;)V

    :cond_2f
    const/4 v2, 0x0

    .line 652
    iget-object v3, p0, Lcom/vungle/warren/Vungle$6;->val$title:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_41

    .line 654
    iget-object v2, p0, Lcom/vungle/warren/Vungle$6;->val$title:Ljava/lang/String;

    const-string v3, "title"

    invoke-virtual {v1, v3, v2}, Lcom/vungle/warren/model/Cookie;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x1

    .line 657
    :cond_41
    iget-object v3, p0, Lcom/vungle/warren/Vungle$6;->val$body:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_51

    .line 659
    iget-object v2, p0, Lcom/vungle/warren/Vungle$6;->val$body:Ljava/lang/String;

    const-string v3, "body"

    invoke-virtual {v1, v3, v2}, Lcom/vungle/warren/model/Cookie;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x1

    .line 662
    :cond_51
    iget-object v3, p0, Lcom/vungle/warren/Vungle$6;->val$keepWatching:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_61

    .line 664
    iget-object v2, p0, Lcom/vungle/warren/Vungle$6;->val$keepWatching:Ljava/lang/String;

    const-string v3, "continue"

    invoke-virtual {v1, v3, v2}, Lcom/vungle/warren/model/Cookie;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x1

    .line 667
    :cond_61
    iget-object v3, p0, Lcom/vungle/warren/Vungle$6;->val$close:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_71

    .line 669
    iget-object v2, p0, Lcom/vungle/warren/Vungle$6;->val$close:Ljava/lang/String;

    const-string v3, "close"

    invoke-virtual {v1, v3, v2}, Lcom/vungle/warren/model/Cookie;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x1

    .line 672
    :cond_71
    iget-object v3, p0, Lcom/vungle/warren/Vungle$6;->val$userID:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_81

    .line 674
    iget-object v2, p0, Lcom/vungle/warren/Vungle$6;->val$userID:Ljava/lang/String;

    const-string v3, "userID"

    invoke-virtual {v1, v3, v2}, Lcom/vungle/warren/model/Cookie;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x1

    :cond_81
    if-eqz v2, :cond_8b

    .line 679
    :try_start_83
    invoke-virtual {v0, v1}, Lcom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;)V
    :try_end_86
    .catch Lcom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_83 .. :try_end_86} :catch_87

    goto :goto_8b

    :catch_87
    move-exception v0

    .line 681
    invoke-virtual {v0}, Lcom/vungle/warren/persistence/DatabaseHelper$DBException;->printStackTrace()V

    :cond_8b
    :goto_8b
    return-void
.end method
