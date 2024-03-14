.class final Lcom/google/android/gms/internal/ads/zzall;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbck;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzbck<",
        "Lcom/google/android/gms/internal/ads/zzaki;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzdib:Lcom/google/android/gms/internal/ads/zzali;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzalm;Lcom/google/android/gms/internal/ads/zzali;)V
    .registers 3

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzall;->zzdib:Lcom/google/android/gms/internal/ads/zzali;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zzh(Ljava/lang/Object;)V
    .registers 3

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/zzaki;

    const-string v0, "Getting a new session for JS Engine."

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzayp;->zzei(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzall;->zzdib:Lcom/google/android/gms/internal/ads/zzali;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzaki;->zzth()Lcom/google/android/gms/internal/ads/zzals;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbcn;->zzm(Ljava/lang/Object;)V

    return-void
.end method
