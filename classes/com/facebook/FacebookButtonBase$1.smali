.class Lcom/facebook/FacebookButtonBase$1;
.super Ljava/lang/Object;
.source "FacebookButtonBase.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/FacebookButtonBase;->setupOnClickListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/FacebookButtonBase;


# direct methods
.method constructor <init>(Lcom/facebook/FacebookButtonBase;)V
    .registers 2

    .line 358
    iput-object p1, p0, Lcom/facebook/FacebookButtonBase$1;->this$0:Lcom/facebook/FacebookButtonBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 361
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/facebook/FacebookButtonBase$1;->this$0:Lcom/facebook/FacebookButtonBase;

    iget-object v1, p0, Lcom/facebook/FacebookButtonBase$1;->this$0:Lcom/facebook/FacebookButtonBase;

    invoke-virtual {v1}, Lcom/facebook/FacebookButtonBase;->getContext()Landroid/content/Context;

    move-result-object v1

    # invokes: Lcom/facebook/FacebookButtonBase;->logButtonTapped(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lcom/facebook/FacebookButtonBase;->access$000(Lcom/facebook/FacebookButtonBase;Landroid/content/Context;)V

    .line 362
    iget-object v0, p0, Lcom/facebook/FacebookButtonBase$1;->this$0:Lcom/facebook/FacebookButtonBase;

    # getter for: Lcom/facebook/FacebookButtonBase;->internalOnClickListener:Landroid/view/View$OnClickListener;
    invoke-static {v0}, Lcom/facebook/FacebookButtonBase;->access$100(Lcom/facebook/FacebookButtonBase;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 363
    iget-object v0, p0, Lcom/facebook/FacebookButtonBase$1;->this$0:Lcom/facebook/FacebookButtonBase;

    # getter for: Lcom/facebook/FacebookButtonBase;->internalOnClickListener:Landroid/view/View$OnClickListener;
    invoke-static {v0}, Lcom/facebook/FacebookButtonBase;->access$100(Lcom/facebook/FacebookButtonBase;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_35

    .line 364
    :cond_24
    iget-object v0, p0, Lcom/facebook/FacebookButtonBase$1;->this$0:Lcom/facebook/FacebookButtonBase;

    # getter for: Lcom/facebook/FacebookButtonBase;->externalOnClickListener:Landroid/view/View$OnClickListener;
    invoke-static {v0}, Lcom/facebook/FacebookButtonBase;->access$200(Lcom/facebook/FacebookButtonBase;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_35

    .line 365
    iget-object v0, p0, Lcom/facebook/FacebookButtonBase$1;->this$0:Lcom/facebook/FacebookButtonBase;

    # getter for: Lcom/facebook/FacebookButtonBase;->externalOnClickListener:Landroid/view/View$OnClickListener;
    invoke-static {v0}, Lcom/facebook/FacebookButtonBase;->access$200(Lcom/facebook/FacebookButtonBase;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_35} :catch_36

    :cond_35
    :goto_35
    return-void

    :catch_36
    move-exception p1

    .line 367
    invoke-static {p1, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
