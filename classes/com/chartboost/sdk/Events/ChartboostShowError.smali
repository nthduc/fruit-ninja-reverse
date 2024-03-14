.class public Lcom/chartboost/sdk/Events/ChartboostShowError;
.super Lcom/chartboost/sdk/Events/ChartboostError;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/Events/ChartboostShowError$Code;
    }
.end annotation


# instance fields
.field public final code:Lcom/chartboost/sdk/Events/ChartboostShowError$Code;

.field public shouldRetry:Z


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/Events/ChartboostShowError$Code;Z)V
    .registers 4

    const/4 v0, 0x2

    .line 1
    invoke-direct {p0, v0}, Lcom/chartboost/sdk/Events/ChartboostError;-><init>(I)V

    .line 2
    iput-object p1, p0, Lcom/chartboost/sdk/Events/ChartboostShowError;->code:Lcom/chartboost/sdk/Events/ChartboostShowError$Code;

    .line 3
    iput-boolean p2, p0, Lcom/chartboost/sdk/Events/ChartboostShowError;->shouldRetry:Z

    return-void
.end method
