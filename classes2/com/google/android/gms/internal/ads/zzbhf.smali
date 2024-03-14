.class final synthetic Lcom/google/android/gms/internal/ads/zzbhf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzebs:I

.field private final zzebt:I

.field private final zzens:Z

.field private final zzent:Z

.field private final zzepy:Lcom/google/android/gms/internal/ads/zzbhd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbhd;IIZZ)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzepy:Lcom/google/android/gms/internal/ads/zzbhd;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzebs:I

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzebt:I

    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzens:Z

    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzent:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzepy:Lcom/google/android/gms/internal/ads/zzbhd;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzebs:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzebt:I

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzens:Z

    iget-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzent:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzbhd;->zzb(IIZZ)V

    return-void
.end method
