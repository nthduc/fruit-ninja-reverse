.class final Lcom/google/android/gms/internal/ads/zzalk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbck;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzbck<",
        "Lcom/google/android/gms/internal/ads/zzalp;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzdia:Lcom/google/android/gms/internal/ads/zzali;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzali;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzalk;->zzdia:Lcom/google/android/gms/internal/ads/zzali;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zzh(Ljava/lang/Object;)V
    .registers 2

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/zzalp;

    const-string p1, "Releasing engine reference."

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzayp;->zzei(Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzalk;->zzdia:Lcom/google/android/gms/internal/ads/zzali;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzali;->zza(Lcom/google/android/gms/internal/ads/zzali;)Lcom/google/android/gms/internal/ads/zzalm;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzalm;->zztl()V

    return-void
.end method
