.class final Lcom/helpshift/support/Support$13;
.super Ljava/lang/Object;
.source "Support.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/support/Support;->setSDKLanguage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$locale:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 1036
    iput-object p1, p0, Lcom/helpshift/support/Support$13;->val$locale:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1039
    iget-object v0, p0, Lcom/helpshift/support/Support$13;->val$locale:Ljava/lang/String;

    invoke-static {v0}, Lcom/helpshift/support/SupportInternal;->setSDKLanguage(Ljava/lang/String;)V

    return-void
.end method
