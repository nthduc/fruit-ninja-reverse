.class final synthetic Lcom/google/android/gms/internal/ads/zzckb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzqu;


# instance fields
.field private final zzeqk:Lcom/google/android/gms/internal/ads/zzbgj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbgj;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzckb;->zzeqk:Lcom/google/android/gms/internal/ads/zzbgj;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzqr;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzckb;->zzeqk:Lcom/google/android/gms/internal/ads/zzbgj;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbgj;->zzabw()Lcom/google/android/gms/internal/ads/zzbhv;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzqr;->zzbru:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzqr;->zzbru:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    const/4 v2, 0x0

    .line 3
    invoke-interface {v0, v1, p1, v2}, Lcom/google/android/gms/internal/ads/zzbhv;->zza(IIZ)V

    return-void
.end method
