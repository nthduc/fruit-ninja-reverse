.class final Lcom/google/android/gms/internal/ads/zzamd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbad;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzbad<",
        "Lcom/google/android/gms/internal/ads/zzaki;",
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
.method public final synthetic zzh(Ljava/lang/Object;)V
    .registers 4

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/zzaki;

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/ads/zzagx;->zzdfg:Lcom/google/android/gms/internal/ads/zzahw;

    const-string v1, "/result"

    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzaki;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahq;)V

    return-void
.end method
