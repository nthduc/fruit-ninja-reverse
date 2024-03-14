.class public Lcom/chartboost/sdk/Events/ChartboostError;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/Events/ChartboostError$Type;
    }
.end annotation


# instance fields
.field public final actionType:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/chartboost/sdk/Events/ChartboostError;->actionType:I

    return-void
.end method
