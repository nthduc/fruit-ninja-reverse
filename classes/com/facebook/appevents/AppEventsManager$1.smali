.class final Lcom/facebook/appevents/AppEventsManager$1;
.super Ljava/lang/Object;
.source "AppEventsManager.java"

# interfaces
.implements Lcom/facebook/internal/FeatureManager$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/appevents/AppEventsManager;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Z)V
    .registers 2

    if-eqz p1, :cond_5

    .line 44
    invoke-static {}, Lcom/facebook/appevents/aam/MetadataIndexer;->enable()V

    :cond_5
    return-void
.end method
