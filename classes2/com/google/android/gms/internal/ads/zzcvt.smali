.class public final Lcom/google/android/gms/internal/ads/zzcvt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcti;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzcti<",
        "Lcom/google/android/gms/internal/ads/zzcdx;",
        "Lcom/google/android/gms/internal/ads/zzdpa;",
        "Lcom/google/android/gms/internal/ads/zzcuu;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzfoc:Ljava/util/concurrent/Executor;

.field private final zzgpj:Lcom/google/android/gms/internal/ads/zzcda;

.field private final zzvr:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcda;Ljava/util/concurrent/Executor;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcvt;->zzvr:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcvt;->zzgpj:Lcom/google/android/gms/internal/ads/zzcda;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcvt;->zzfoc:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/ads/zzdog;I)Z
    .registers 2

    .line 11
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdog;->zzhev:Lcom/google/android/gms/internal/ads/zzdof;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdof;->zzfsk:Lcom/google/android/gms/internal/ads/zzdok;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdok;->zzhfc:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzdog;Lcom/google/android/gms/internal/ads/zzdnv;Lcom/google/android/gms/internal/ads/zzctc;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdog;",
            "Lcom/google/android/gms/internal/ads/zzdnv;",
            "Lcom/google/android/gms/internal/ads/zzctc<",
            "Lcom/google/android/gms/internal/ads/zzdpa;",
            "Lcom/google/android/gms/internal/ads/zzcuu;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzdos;
        }
    .end annotation

    .line 6
    iget-object v0, p3, Lcom/google/android/gms/internal/ads/zzctc;->zzdlf:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzdpa;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcvt;->zzvr:Landroid/content/Context;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzdog;->zzhev:Lcom/google/android/gms/internal/ads/zzdof;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdof;->zzfsk:Lcom/google/android/gms/internal/ads/zzdok;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzdok;->zzhfa:Lcom/google/android/gms/internal/ads/zzvg;

    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzdnv;->zzhdu:Lorg/json/JSONObject;

    .line 7
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzdnv;->zzhdr:Lcom/google/android/gms/internal/ads/zzdny;

    .line 8
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzbao;->zza(Lcom/google/android/gms/internal/ads/zzbat;)Ljava/lang/String;

    move-result-object v5

    iget-object p2, p3, Lcom/google/android/gms/internal/ads/zzctc;->zzgns:Lcom/google/android/gms/internal/ads/zzbvp;

    move-object v6, p2

    check-cast v6, Lcom/google/android/gms/internal/ads/zzanh;

    iget-object p2, p1, Lcom/google/android/gms/internal/ads/zzdog;->zzhev:Lcom/google/android/gms/internal/ads/zzdof;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzdof;->zzfsk:Lcom/google/android/gms/internal/ads/zzdok;

    iget-object v7, p2, Lcom/google/android/gms/internal/ads/zzdok;->zzdly:Lcom/google/android/gms/internal/ads/zzadu;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdog;->zzhev:Lcom/google/android/gms/internal/ads/zzdof;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdof;->zzfsk:Lcom/google/android/gms/internal/ads/zzdok;

    iget-object v8, p1, Lcom/google/android/gms/internal/ads/zzdok;->zzhfc:Ljava/util/ArrayList;

    .line 9
    invoke-virtual/range {v1 .. v8}, Lcom/google/android/gms/internal/ads/zzdpa;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzvg;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzanh;Lcom/google/android/gms/internal/ads/zzadu;Ljava/util/List;)V

    return-void
.end method

.method public final synthetic zzb(Lcom/google/android/gms/internal/ads/zzdog;Lcom/google/android/gms/internal/ads/zzdnv;Lcom/google/android/gms/internal/ads/zzctc;)Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzdos;,
            Lcom/google/android/gms/internal/ads/zzcwn;
        }
    .end annotation

    .line 13
    iget-object v0, p3, Lcom/google/android/gms/internal/ads/zzctc;->zzdlf:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdpa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdpa;->zztt()Lcom/google/android/gms/internal/ads/zzano;

    move-result-object v0

    .line 14
    iget-object v1, p3, Lcom/google/android/gms/internal/ads/zzctc;->zzdlf:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzdpa;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdpa;->zztu()Lcom/google/android/gms/internal/ads/zzanp;

    move-result-object v1

    .line 15
    iget-object v2, p3, Lcom/google/android/gms/internal/ads/zzctc;->zzdlf:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/ads/zzdpa;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdpa;->zztz()Lcom/google/android/gms/internal/ads/zzanu;

    move-result-object v2

    const/4 v3, 0x6

    if-eqz v2, :cond_26

    .line 16
    invoke-static {p1, v3}, Lcom/google/android/gms/internal/ads/zzcvt;->zza(Lcom/google/android/gms/internal/ads/zzdog;I)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 17
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzcei;->zzb(Lcom/google/android/gms/internal/ads/zzanu;)Lcom/google/android/gms/internal/ads/zzcei;

    move-result-object v3

    goto :goto_5b

    :cond_26
    if-eqz v0, :cond_33

    .line 19
    invoke-static {p1, v3}, Lcom/google/android/gms/internal/ads/zzcvt;->zza(Lcom/google/android/gms/internal/ads/zzdog;I)Z

    move-result v4

    if-eqz v4, :cond_33

    .line 20
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcei;->zzb(Lcom/google/android/gms/internal/ads/zzano;)Lcom/google/android/gms/internal/ads/zzcei;

    move-result-object v3

    goto :goto_5b

    :cond_33
    if-eqz v0, :cond_41

    const/4 v4, 0x2

    .line 22
    invoke-static {p1, v4}, Lcom/google/android/gms/internal/ads/zzcvt;->zza(Lcom/google/android/gms/internal/ads/zzdog;I)Z

    move-result v4

    if-eqz v4, :cond_41

    .line 23
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcei;->zza(Lcom/google/android/gms/internal/ads/zzano;)Lcom/google/android/gms/internal/ads/zzcei;

    move-result-object v3

    goto :goto_5b

    :cond_41
    if-eqz v1, :cond_4e

    .line 24
    invoke-static {p1, v3}, Lcom/google/android/gms/internal/ads/zzcvt;->zza(Lcom/google/android/gms/internal/ads/zzdog;I)Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 25
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzcei;->zzb(Lcom/google/android/gms/internal/ads/zzanp;)Lcom/google/android/gms/internal/ads/zzcei;

    move-result-object v3

    goto :goto_5b

    :cond_4e
    if-eqz v1, :cond_b2

    const/4 v3, 0x1

    .line 26
    invoke-static {p1, v3}, Lcom/google/android/gms/internal/ads/zzcvt;->zza(Lcom/google/android/gms/internal/ads/zzdog;I)Z

    move-result v3

    if-eqz v3, :cond_b2

    .line 27
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzcei;->zza(Lcom/google/android/gms/internal/ads/zzanp;)Lcom/google/android/gms/internal/ads/zzcei;

    move-result-object v3

    .line 29
    :goto_5b
    iget-object v4, p1, Lcom/google/android/gms/internal/ads/zzdog;->zzhev:Lcom/google/android/gms/internal/ads/zzdof;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzdof;->zzfsk:Lcom/google/android/gms/internal/ads/zzdok;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzdok;->zzhfc:Ljava/util/ArrayList;

    .line 30
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzcei;->zzama()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 31
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a8

    .line 33
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzcvt;->zzgpj:Lcom/google/android/gms/internal/ads/zzcda;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzbre;

    iget-object v6, p3, Lcom/google/android/gms/internal/ads/zzctc;->zzcib:Ljava/lang/String;

    invoke-direct {v5, p1, p2, v6}, Lcom/google/android/gms/internal/ads/zzbre;-><init>(Lcom/google/android/gms/internal/ads/zzdog;Lcom/google/android/gms/internal/ads/zzdnv;Ljava/lang/String;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzceu;

    invoke-direct {p1, v3}, Lcom/google/android/gms/internal/ads/zzceu;-><init>(Lcom/google/android/gms/internal/ads/zzcei;)V

    new-instance p2, Lcom/google/android/gms/internal/ads/zzcgf;

    invoke-direct {p2, v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzcgf;-><init>(Lcom/google/android/gms/internal/ads/zzanp;Lcom/google/android/gms/internal/ads/zzano;Lcom/google/android/gms/internal/ads/zzanu;)V

    .line 34
    invoke-virtual {v4, v5, p1, p2}, Lcom/google/android/gms/internal/ads/zzcda;->zza(Lcom/google/android/gms/internal/ads/zzbre;Lcom/google/android/gms/internal/ads/zzceu;Lcom/google/android/gms/internal/ads/zzcgf;)Lcom/google/android/gms/internal/ads/zzcej;

    move-result-object p1

    .line 35
    iget-object p2, p3, Lcom/google/android/gms/internal/ads/zzctc;->zzgns:Lcom/google/android/gms/internal/ads/zzbvp;

    check-cast p2, Lcom/google/android/gms/internal/ads/zzcuu;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbqq;->zzafe()Lcom/google/android/gms/internal/ads/zzcyc;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzcuu;->zzb(Lcom/google/android/gms/internal/ads/zzanh;)V

    .line 36
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbqq;->zzaez()Lcom/google/android/gms/internal/ads/zzbvb;

    move-result-object p2

    .line 37
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbmf;

    iget-object p3, p3, Lcom/google/android/gms/internal/ads/zzctc;->zzdlf:Ljava/lang/Object;

    check-cast p3, Lcom/google/android/gms/internal/ads/zzdpa;

    invoke-direct {v0, p3}, Lcom/google/android/gms/internal/ads/zzbmf;-><init>(Lcom/google/android/gms/internal/ads/zzdpa;)V

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzcvt;->zzfoc:Ljava/util/concurrent/Executor;

    invoke-virtual {p2, v0, p3}, Lcom/google/android/gms/internal/ads/zzbyr;->zza(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    .line 38
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzceh;->zzafg()Lcom/google/android/gms/internal/ads/zzcdx;

    move-result-object p1

    return-object p1

    .line 32
    :cond_a8
    new-instance p1, Lcom/google/android/gms/internal/ads/zzcwn;

    sget-object p2, Lcom/google/android/gms/internal/ads/zzdpg;->zzhfw:Lcom/google/android/gms/internal/ads/zzdpg;

    const-string p3, "No corresponding native ad listener"

    invoke-direct {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzcwn;-><init>(Lcom/google/android/gms/internal/ads/zzdpg;Ljava/lang/String;)V

    throw p1

    .line 28
    :cond_b2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzcwn;

    sget-object p2, Lcom/google/android/gms/internal/ads/zzdpg;->zzhfw:Lcom/google/android/gms/internal/ads/zzdpg;

    const-string p3, "No native ad mappers"

    invoke-direct {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzcwn;-><init>(Lcom/google/android/gms/internal/ads/zzdpg;Ljava/lang/String;)V

    throw p1
.end method
