.class public final Lcom/google/android/gms/internal/ads/zzdge;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdgx;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdgx<",
        "Lcom/google/android/gms/internal/ads/zzdgf;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzbqq:Lcom/google/android/gms/internal/ads/zzawo;

.field private final zzgcz:Lcom/google/android/gms/internal/ads/zzdzb;

.field private final zzvr:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzawo;Lcom/google/android/gms/internal/ads/zzdzb;Landroid/content/Context;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdge;->zzbqq:Lcom/google/android/gms/internal/ads/zzawo;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdge;->zzgcz:Lcom/google/android/gms/internal/ads/zzdzb;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdge;->zzvr:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final zzarj()Lcom/google/android/gms/internal/ads/zzdzc;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzdzc<",
            "Lcom/google/android/gms/internal/ads/zzdgf;",
            ">;"
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdge;->zzgcz:Lcom/google/android/gms/internal/ads/zzdzb;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdgh;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzdgh;-><init>(Lcom/google/android/gms/internal/ads/zzdge;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzdzb;->zze(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object v0

    return-object v0
.end method

.method final synthetic zzarx()Lcom/google/android/gms/internal/ads/zzdgf;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdge;->zzbqq:Lcom/google/android/gms/internal/ads/zzawo;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdge;->zzvr:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzawo;->zzac(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 8
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdgf;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzdgf;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    return-object v0

    .line 9
    :cond_16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdge;->zzbqq:Lcom/google/android/gms/internal/ads/zzawo;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdge;->zzvr:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzawo;->zzaf(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_24

    move-object v3, v1

    goto :goto_25

    :cond_24
    move-object v3, v0

    .line 11
    :goto_25
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdge;->zzbqq:Lcom/google/android/gms/internal/ads/zzawo;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdge;->zzvr:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzawo;->zzag(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_31

    move-object v4, v1

    goto :goto_32

    :cond_31
    move-object v4, v0

    .line 13
    :goto_32
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdge;->zzbqq:Lcom/google/android/gms/internal/ads/zzawo;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdge;->zzvr:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzawo;->zzah(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3e

    move-object v5, v1

    goto :goto_3f

    :cond_3e
    move-object v5, v0

    .line 15
    :goto_3f
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdge;->zzbqq:Lcom/google/android/gms/internal/ads/zzawo;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdge;->zzvr:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzawo;->zzai(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4b

    move-object v6, v1

    goto :goto_4c

    :cond_4b
    move-object v6, v0

    :goto_4c
    const-string v0, "TIME_OUT"

    .line 17
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_61

    .line 18
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabb;->zzcnq:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 19
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v0

    .line 20
    check-cast v0, Ljava/lang/Long;

    goto :goto_62

    :cond_61
    const/4 v0, 0x0

    :goto_62
    move-object v7, v0

    .line 22
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdgf;

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzdgf;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    return-object v0
.end method
