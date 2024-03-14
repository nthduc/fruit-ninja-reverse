.class public final Lcom/google/android/gms/internal/ads/zzcgh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeoy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzeoy<",
        "Lcom/google/android/gms/internal/ads/zzano;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzgcr:Lcom/google/android/gms/internal/ads/zzcgf;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcgf;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcgh;->zzgcr:Lcom/google/android/gms/internal/ads/zzcgf;

    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgh;->zzgcr:Lcom/google/android/gms/internal/ads/zzcgf;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcgf;->zzann()Lcom/google/android/gms/internal/ads/zzano;

    move-result-object v0

    return-object v0
.end method
