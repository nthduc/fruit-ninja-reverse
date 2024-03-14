.class public final Lcom/google/android/gms/internal/ads/zzccv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeoy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzeoy<",
        "Lcom/google/android/gms/internal/ads/zzwt;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzfxk:Lcom/google/android/gms/internal/ads/zzccw;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzccw;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzccv;->zzfxk:Lcom/google/android/gms/internal/ads/zzccw;

    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzccv;->zzfxk:Lcom/google/android/gms/internal/ads/zzccw;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzccw;->zzali()Lcom/google/android/gms/internal/ads/zzwt;

    move-result-object v0

    return-object v0
.end method
