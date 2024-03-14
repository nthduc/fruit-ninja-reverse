.class public Lcom/vungle/warren/vision/VisionConfig;
.super Ljava/lang/Object;
.source "VisionConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/warren/vision/VisionConfig$Limits;
    }
.end annotation


# instance fields
.field public aggregationFilters:[Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "aggregation_filters"
    .end annotation
.end field

.field public aggregationTimeWindows:[I
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "aggregation_time_windows"
    .end annotation
.end field

.field public enabled:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "enabled"
    .end annotation
.end field

.field public viewLimit:Lcom/vungle/warren/vision/VisionConfig$Limits;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "view_limit"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
