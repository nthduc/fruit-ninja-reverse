.class final Lcom/helpshift/support/Support$10;
.super Ljava/lang/Object;
.source "Support.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/support/Support;->setMetadataCallback(Lcom/helpshift/support/MetadataCallable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$metadataCallable:Lcom/helpshift/support/MetadataCallable;


# direct methods
.method constructor <init>(Lcom/helpshift/support/MetadataCallable;)V
    .registers 2

    .line 933
    iput-object p1, p0, Lcom/helpshift/support/Support$10;->val$metadataCallable:Lcom/helpshift/support/MetadataCallable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 936
    iget-object v0, p0, Lcom/helpshift/support/Support$10;->val$metadataCallable:Lcom/helpshift/support/MetadataCallable;

    invoke-static {v0}, Lcom/helpshift/support/SupportInternal;->setMetadataCallback(Lcom/helpshift/support/MetadataCallable;)V

    return-void
.end method
