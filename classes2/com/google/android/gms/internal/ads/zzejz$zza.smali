.class public final Lcom/google/android/gms/internal/ads/zzejz$zza;
.super Lcom/google/android/gms/internal/ads/zzeig;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzejz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/google/android/gms/internal/ads/zzejz<",
        "TT;*>;>",
        "Lcom/google/android/gms/internal/ads/zzeig<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final zzijg:Lcom/google/android/gms/internal/ads/zzejz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzejz;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzeig;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzejz$zza;->zzijg:Lcom/google/android/gms/internal/ads/zzejz;

    return-void
.end method
