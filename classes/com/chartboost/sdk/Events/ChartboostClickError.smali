.class public Lcom/chartboost/sdk/Events/ChartboostClickError;
.super Lcom/chartboost/sdk/Events/ChartboostError;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/Events/ChartboostClickError$Code;
    }
.end annotation


# instance fields
.field public final code:Lcom/chartboost/sdk/Events/ChartboostClickError$Code;


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/Events/ChartboostClickError$Code;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/chartboost/sdk/Events/ChartboostError;-><init>(I)V

    .line 2
    iput-object p1, p0, Lcom/chartboost/sdk/Events/ChartboostClickError;->code:Lcom/chartboost/sdk/Events/ChartboostClickError$Code;

    return-void
.end method
