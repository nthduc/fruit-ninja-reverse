.class public final Lcom/google/android/gms/internal/ads/zzctq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcta;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzcta<",
        "Lcom/google/android/gms/internal/ads/zzbnv;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzfoc:Ljava/util/concurrent/Executor;

.field private final zzgbx:Lcom/google/android/gms/internal/ads/zzcjt;

.field private final zzgoh:Lcom/google/android/gms/internal/ads/zzbnq;

.field private final zzvr:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbnq;Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzcjt;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzctq;->zzvr:Landroid/content/Context;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzctq;->zzgoh:Lcom/google/android/gms/internal/ads/zzbnq;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzctq;->zzfoc:Ljava/util/concurrent/Executor;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzctq;->zzgbx:Lcom/google/android/gms/internal/ads/zzcjt;

    return-void
.end method


# virtual methods
.method final synthetic zza(Lcom/google/android/gms/internal/ads/zzdog;Lcom/google/android/gms/internal/ads/zzdnv;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzc;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 12
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzctq;->zzvr:Landroid/content/Context;

    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzdnv;->zzhdt:Ljava/util/List;

    .line 13
    invoke-static {p3, v0}, Lcom/google/android/gms/internal/ads/zzdoq;->zzb(Landroid/content/Context;Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzvn;

    move-result-object p3

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzctq;->zzgbx:Lcom/google/android/gms/internal/ads/zzcjt;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzdog;->zzhew:Lcom/google/android/gms/internal/ads/zzdoe;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzdoe;->zzeou:Lcom/google/android/gms/internal/ads/zzdnw;

    iget-boolean v2, p2, Lcom/google/android/gms/internal/ads/zzdnv;->zzeos:Z

    .line 15
    invoke-virtual {v0, p3, p2, v1, v2}, Lcom/google/android/gms/internal/ads/zzcjt;->zza(Lcom/google/android/gms/internal/ads/zzvn;Lcom/google/android/gms/internal/ads/zzdnv;Lcom/google/android/gms/internal/ads/zzdnw;Z)Lcom/google/android/gms/internal/ads/zzbgj;

    move-result-object v0

    .line 16
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzctq;->zzgoh:Lcom/google/android/gms/internal/ads/zzbnq;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzbre;

    const/4 v3, 0x0

    invoke-direct {v2, p1, p2, v3}, Lcom/google/android/gms/internal/ads/zzbre;-><init>(Lcom/google/android/gms/internal/ads/zzdog;Lcom/google/android/gms/internal/ads/zzdnv;Ljava/lang/String;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzbnj;

    .line 17
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbgj;->getView()Landroid/view/View;

    move-result-object v4

    .line 18
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzdoq;->zzf(Lcom/google/android/gms/internal/ads/zzvn;)Lcom/google/android/gms/internal/ads/zzdnu;

    move-result-object v6

    iget v7, p2, Lcom/google/android/gms/internal/ads/zzdnv;->zzfpf:I

    iget-boolean v8, p2, Lcom/google/android/gms/internal/ads/zzdnv;->zzfpg:Z

    iget-boolean v9, p2, Lcom/google/android/gms/internal/ads/zzdnv;->zzfph:Z

    move-object v3, p1

    move-object v5, v0

    invoke-direct/range {v3 .. v9}, Lcom/google/android/gms/internal/ads/zzbnj;-><init>(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzbgj;Lcom/google/android/gms/internal/ads/zzdnu;IZZ)V

    .line 19
    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzbnq;->zza(Lcom/google/android/gms/internal/ads/zzbre;Lcom/google/android/gms/internal/ads/zzbnj;)Lcom/google/android/gms/internal/ads/zzbnk;

    move-result-object p1

    .line 20
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbnk;->zzafq()Lcom/google/android/gms/internal/ads/zzcjv;

    move-result-object p3

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Lcom/google/android/gms/internal/ads/zzcjv;->zzb(Lcom/google/android/gms/internal/ads/zzbgj;Z)V

    .line 22
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbqq;->zzafc()Lcom/google/android/gms/internal/ads/zzbuu;

    move-result-object p3

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcts;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzcts;-><init>(Lcom/google/android/gms/internal/ads/zzbgj;)V

    .line 23
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbbz;->zzeeu:Lcom/google/android/gms/internal/ads/zzdzb;

    .line 24
    invoke-virtual {p3, v1, v2}, Lcom/google/android/gms/internal/ads/zzbyr;->zza(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    .line 26
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbnk;->zzafq()Lcom/google/android/gms/internal/ads/zzcjv;

    iget-object p3, p2, Lcom/google/android/gms/internal/ads/zzdnv;->zzhdr:Lcom/google/android/gms/internal/ads/zzdny;

    iget-object p3, p3, Lcom/google/android/gms/internal/ads/zzdny;->zzdpn:Ljava/lang/String;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzdnv;->zzhdr:Lcom/google/android/gms/internal/ads/zzdny;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzdny;->zzdpp:Ljava/lang/String;

    .line 27
    invoke-static {v0, p3, p2}, Lcom/google/android/gms/internal/ads/zzcjv;->zza(Lcom/google/android/gms/internal/ads/zzbgj;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p2

    .line 28
    new-instance p3, Lcom/google/android/gms/internal/ads/zzctr;

    invoke-direct {p3, p1}, Lcom/google/android/gms/internal/ads/zzctr;-><init>(Lcom/google/android/gms/internal/ads/zzbnk;)V

    .line 29
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbbz;->zzeeu:Lcom/google/android/gms/internal/ads/zzdzb;

    .line 30
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzdyq;->zzb(Lcom/google/android/gms/internal/ads/zzdzc;Lcom/google/android/gms/internal/ads/zzdvu;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzdog;Lcom/google/android/gms/internal/ads/zzdnv;)Z
    .registers 3

    .line 7
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzdnv;->zzhdr:Lcom/google/android/gms/internal/ads/zzdny;

    if-eqz p1, :cond_c

    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzdnv;->zzhdr:Lcom/google/android/gms/internal/ads/zzdny;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdny;->zzdpp:Ljava/lang/String;

    if-eqz p1, :cond_c

    const/4 p1, 0x1

    return p1

    :cond_c
    const/4 p1, 0x0

    return p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzdog;Lcom/google/android/gms/internal/ads/zzdnv;)Lcom/google/android/gms/internal/ads/zzdzc;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdog;",
            "Lcom/google/android/gms/internal/ads/zzdnv;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzdzc<",
            "Lcom/google/android/gms/internal/ads/zzbnv;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 9
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdyq;->zzaf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzctp;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzctp;-><init>(Lcom/google/android/gms/internal/ads/zzctq;Lcom/google/android/gms/internal/ads/zzdog;Lcom/google/android/gms/internal/ads/zzdnv;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzctq;->zzfoc:Ljava/util/concurrent/Executor;

    .line 10
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzdyq;->zzb(Lcom/google/android/gms/internal/ads/zzdzc;Lcom/google/android/gms/internal/ads/zzdya;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p1

    return-object p1
.end method
