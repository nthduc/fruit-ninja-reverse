.class final synthetic Lcom/google/android/gms/internal/ads/zzdia;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdvu;


# instance fields
.field private final zzgza:Lcom/google/android/gms/internal/ads/zzdhz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdhz;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdia;->zzgza:Lcom/google/android/gms/internal/ads/zzdhz;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdia;->zzgza:Lcom/google/android/gms/internal/ads/zzdhz;

    check-cast p1, Ljava/lang/Exception;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdhz;->zzb(Ljava/lang/Exception;)Lcom/google/android/gms/internal/ads/zzdhw;

    move-result-object p1

    return-object p1
.end method
