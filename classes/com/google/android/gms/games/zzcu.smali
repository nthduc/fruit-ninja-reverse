.class final Lcom/google/android/gms/games/zzcu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games@@20.0.1"

# interfaces
.implements Lcom/google/android/gms/common/internal/PendingResultUtil$ResultConverter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/internal/PendingResultUtil$ResultConverter<",
        "Lcom/google/android/gms/games/video/Videos$CaptureCapabilitiesResult;",
        "Lcom/google/android/gms/games/video/VideoCapabilities;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic convert(Lcom/google/android/gms/common/api/Result;)Ljava/lang/Object;
    .registers 2

    .line 2
    check-cast p1, Lcom/google/android/gms/games/video/Videos$CaptureCapabilitiesResult;

    if-nez p1, :cond_6

    const/4 p1, 0x0

    return-object p1

    .line 5
    :cond_6
    invoke-interface {p1}, Lcom/google/android/gms/games/video/Videos$CaptureCapabilitiesResult;->getCapabilities()Lcom/google/android/gms/games/video/VideoCapabilities;

    move-result-object p1

    return-object p1
.end method
