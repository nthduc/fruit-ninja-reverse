.class final Lcom/helpshift/support/Support$9;
.super Ljava/lang/Object;
.source "Support.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/support/Support;->setMetadataCallback(Lcom/helpshift/support/Callable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$f:Lcom/helpshift/support/Callable;


# direct methods
.method constructor <init>(Lcom/helpshift/support/Callable;)V
    .registers 2

    .line 900
    iput-object p1, p0, Lcom/helpshift/support/Support$9;->val$f:Lcom/helpshift/support/Callable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 903
    iget-object v0, p0, Lcom/helpshift/support/Support$9;->val$f:Lcom/helpshift/support/Callable;

    invoke-static {v0}, Lcom/helpshift/support/SupportInternal;->setMetadataCallback(Lcom/helpshift/support/Callable;)V

    return-void
.end method
