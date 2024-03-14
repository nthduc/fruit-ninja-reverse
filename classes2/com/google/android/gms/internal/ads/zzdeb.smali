.class final synthetic Lcom/google/android/gms/internal/ads/zzdeb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdvu;


# instance fields
.field private final zzgwq:Lcom/google/android/gms/internal/ads/zzddz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzddz;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdeb;->zzgwq:Lcom/google/android/gms/internal/ads/zzddz;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdeb;->zzgwq:Lcom/google/android/gms/internal/ads/zzddz;

    check-cast p1, Landroid/location/Location;

    if-eqz p1, :cond_7

    return-object p1

    .line 4
    :cond_7
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/zzddz;->zzfsk:Lcom/google/android/gms/internal/ads/zzdok;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdok;->zzhfa:Lcom/google/android/gms/internal/ads/zzvg;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzvg;->zznb:Landroid/location/Location;

    return-object p1
.end method
