.class final Lcom/google/android/gms/internal/ads/zzpu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/google/android/gms/internal/ads/zzpr;",
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
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/ads/zzpr;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzpr;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    const/4 p1, 0x0

    .line 2
    new-array p1, p1, [Lcom/google/android/gms/internal/ads/zzpr;

    return-object p1
.end method
