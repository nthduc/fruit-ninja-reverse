.class final synthetic Lcom/google/android/gms/internal/ads/zzbij;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zztr;


# instance fields
.field private final zzebs:I

.field private final zzeok:Z


# direct methods
.method constructor <init>(ZI)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbij;->zzeok:Z

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzbij;->zzebs:I

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzua$zzi$zza;)V
    .registers 4

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbij;->zzeok:Z

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbij;->zzebs:I

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzbig;->zza(ZILcom/google/android/gms/internal/ads/zzua$zzi$zza;)V

    return-void
.end method
