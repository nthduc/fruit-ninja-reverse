.class public final Lcom/google/android/gms/internal/ads/zzboo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeoy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzeoy<",
        "Landroid/view/ViewGroup;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzfpz:Lcom/google/android/gms/internal/ads/zzbol;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbol;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzboo;->zzfpz:Lcom/google/android/gms/internal/ads/zzbol;

    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzboo;->zzfpz:Lcom/google/android/gms/internal/ads/zzbol;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbol;->zzaie()Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method
