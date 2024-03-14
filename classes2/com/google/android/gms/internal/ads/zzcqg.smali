.class final Lcom/google/android/gms/internal/ads/zzcqg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbws;


# instance fields
.field private final zzbqq:Lcom/google/android/gms/internal/ads/zzawo;

.field private final zzvr:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzawo;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcqg;->zzvr:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcqg;->zzbqq:Lcom/google/android/gms/internal/ads/zzawo;

    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/ads/zzdog;)V
    .registers 5

    .line 6
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzdog;->zzhew:Lcom/google/android/gms/internal/ads/zzdoe;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdoe;->zzeou:Lcom/google/android/gms/internal/ads/zzdnw;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdnw;->zzdto:Ljava/lang/String;

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqg;->zzbqq:Lcom/google/android/gms/internal/ads/zzawo;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcqg;->zzvr:Landroid/content/Context;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzdog;->zzhev:Lcom/google/android/gms/internal/ads/zzdof;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzdof;->zzfsk:Lcom/google/android/gms/internal/ads/zzdok;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzdok;->zzhfa:Lcom/google/android/gms/internal/ads/zzvg;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzawo;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzvg;)V

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqg;->zzbqq:Lcom/google/android/gms/internal/ads/zzawo;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcqg;->zzvr:Landroid/content/Context;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdog;->zzhew:Lcom/google/android/gms/internal/ads/zzdoe;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdoe;->zzeou:Lcom/google/android/gms/internal/ads/zzdnw;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdnw;->zzdto:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzawo;->zzk(Landroid/content/Context;Ljava/lang/String;)V

    :cond_26
    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzatc;)V
    .registers 2

    return-void
.end method
