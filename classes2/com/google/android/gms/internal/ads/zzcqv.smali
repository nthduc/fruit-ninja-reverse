.class public final Lcom/google/android/gms/internal/ads/zzcqv;
.super Lcom/google/android/gms/internal/ads/zzass;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field private final zzfoc:Ljava/util/concurrent/Executor;

.field private final zzglb:Lcom/google/android/gms/internal/ads/zzatt;

.field private final zzglc:Lcom/google/android/gms/internal/ads/zzatq;

.field private final zzgld:Lcom/google/android/gms/internal/ads/zzbly;

.field private final zzgle:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzcrk;",
            ">;"
        }
    .end annotation
.end field

.field private final zzvr:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzatt;Lcom/google/android/gms/internal/ads/zzbly;Lcom/google/android/gms/internal/ads/zzatq;Ljava/util/HashMap;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/internal/ads/zzatt;",
            "Lcom/google/android/gms/internal/ads/zzbly;",
            "Lcom/google/android/gms/internal/ads/zzatq;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzcrk;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzass;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzabb;->initialize(Landroid/content/Context;)V

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcqv;->zzvr:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcqv;->zzfoc:Ljava/util/concurrent/Executor;

    .line 5
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcqv;->zzglb:Lcom/google/android/gms/internal/ads/zzatt;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzcqv;->zzglc:Lcom/google/android/gms/internal/ads/zzatq;

    .line 7
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcqv;->zzgld:Lcom/google/android/gms/internal/ads/zzbly;

    .line 8
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzcqv;->zzgle:Ljava/util/HashMap;

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/ads/zzatc;Lcom/google/android/gms/internal/ads/zzdsi;Lcom/google/android/gms/internal/ads/zzdhp;)Lcom/google/android/gms/internal/ads/zzdzc;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzatc;",
            "Lcom/google/android/gms/internal/ads/zzdsi;",
            "Lcom/google/android/gms/internal/ads/zzdhp;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzdzc<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .line 60
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcqz;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/ads/zzcqz;-><init>(Lcom/google/android/gms/internal/ads/zzdhp;)V

    .line 61
    sget-object p2, Lcom/google/android/gms/internal/ads/zzcrc;->zzgjj:Lcom/google/android/gms/internal/ads/zzdrp;

    .line 62
    sget-object v1, Lcom/google/android/gms/internal/ads/zzdsf;->zzhkq:Lcom/google/android/gms/internal/ads/zzdsf;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzatc;->zzdty:Landroid/os/Bundle;

    .line 63
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdyq;->zzaf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Lcom/google/android/gms/internal/ads/zzdru;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzdzc;)Lcom/google/android/gms/internal/ads/zzdsa;

    move-result-object p0

    .line 64
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzdsa;->zza(Lcom/google/android/gms/internal/ads/zzdya;)Lcom/google/android/gms/internal/ads/zzdsa;

    move-result-object p0

    .line 65
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzdsa;->zzb(Lcom/google/android/gms/internal/ads/zzdrp;)Lcom/google/android/gms/internal/ads/zzdsa;

    move-result-object p0

    .line 66
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdsa;->zzavs()Lcom/google/android/gms/internal/ads/zzdrr;

    move-result-object p0

    return-object p0
.end method

.method private static zza(Lcom/google/android/gms/internal/ads/zzdzc;Lcom/google/android/gms/internal/ads/zzdsi;Lcom/google/android/gms/internal/ads/zzamb;)Lcom/google/android/gms/internal/ads/zzdzc;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdzc<",
            "Lorg/json/JSONObject;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzdsi;",
            "Lcom/google/android/gms/internal/ads/zzamb;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzdzc<",
            "Lcom/google/android/gms/internal/ads/zzati;",
            ">;"
        }
    .end annotation

    .line 68
    sget-object v0, Lcom/google/android/gms/internal/ads/zzama;->zzdio:Lcom/google/android/gms/internal/ads/zzalx;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzcrb;->zzdin:Lcom/google/android/gms/internal/ads/zzalv;

    const-string v2, "AFMA_getAdDictionary"

    .line 69
    invoke-virtual {p2, v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzamb;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaly;Lcom/google/android/gms/internal/ads/zzalv;)Lcom/google/android/gms/internal/ads/zzalt;

    move-result-object p2

    .line 70
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdsf;->zzhks:Lcom/google/android/gms/internal/ads/zzdsf;

    .line 71
    invoke-virtual {p1, v0, p0}, Lcom/google/android/gms/internal/ads/zzdru;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzdzc;)Lcom/google/android/gms/internal/ads/zzdsa;

    move-result-object p0

    .line 72
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzdsa;->zza(Lcom/google/android/gms/internal/ads/zzdya;)Lcom/google/android/gms/internal/ads/zzdsa;

    move-result-object p0

    .line 73
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdsa;->zzavs()Lcom/google/android/gms/internal/ads/zzdrr;

    move-result-object p0

    return-object p0
.end method

.method private final zza(Lcom/google/android/gms/internal/ads/zzdzc;Lcom/google/android/gms/internal/ads/zzasw;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdzc<",
            "Ljava/io/InputStream;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzasw;",
            ")V"
        }
    .end annotation

    .line 135
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcrf;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzcrf;-><init>(Lcom/google/android/gms/internal/ads/zzcqv;)V

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbbz;->zzeep:Lcom/google/android/gms/internal/ads/zzdzb;

    .line 136
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzdyq;->zzb(Lcom/google/android/gms/internal/ads/zzdzc;Lcom/google/android/gms/internal/ads/zzdya;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p1

    .line 137
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcrh;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/ads/zzcrh;-><init>(Lcom/google/android/gms/internal/ads/zzcqv;Lcom/google/android/gms/internal/ads/zzasw;)V

    .line 138
    sget-object p2, Lcom/google/android/gms/internal/ads/zzbbz;->zzeeu:Lcom/google/android/gms/internal/ads/zzdzb;

    .line 139
    invoke-static {p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzdyq;->zza(Lcom/google/android/gms/internal/ads/zzdzc;Lcom/google/android/gms/internal/ads/zzdyr;Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzasn;)Lcom/google/android/gms/internal/ads/zzasp;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method final synthetic zza(Lcom/google/android/gms/internal/ads/zzdzc;Lcom/google/android/gms/internal/ads/zzdzc;)Ljava/io/InputStream;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 143
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdzc;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzati;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzati;->zzvm()Ljava/lang/String;

    move-result-object v0

    .line 144
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzdzc;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/json/JSONObject;

    .line 145
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcqv;->zzgle:Ljava/util/HashMap;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzcrk;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdzc;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzati;

    invoke-direct {v2, p1, p2}, Lcom/google/android/gms/internal/ads/zzcrk;-><init>(Lcom/google/android/gms/internal/ads/zzati;Lorg/json/JSONObject;)V

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    new-instance p1, Ljava/io/ByteArrayInputStream;

    sget-object p2, Lcom/google/android/gms/internal/ads/zzdvs;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object p1
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzasn;Lcom/google/android/gms/internal/ads/zzasu;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzatc;Lcom/google/android/gms/internal/ads/zzasw;)V
    .registers 4

    .line 75
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 76
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzcqv;->zzb(Lcom/google/android/gms/internal/ads/zzatc;I)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p1

    .line 77
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzcqv;->zza(Lcom/google/android/gms/internal/ads/zzdzc;Lcom/google/android/gms/internal/ads/zzasw;)V

    .line 78
    new-instance p2, Lcom/google/android/gms/internal/ads/zzcre;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/zzcre;-><init>(Lcom/google/android/gms/internal/ads/zzcqv;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqv;->zzfoc:Ljava/util/concurrent/Executor;

    invoke-interface {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzdzc;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzasw;)V
    .registers 3

    .line 111
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzcqv;->zzgn(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p1

    .line 112
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzcqv;->zza(Lcom/google/android/gms/internal/ads/zzdzc;Lcom/google/android/gms/internal/ads/zzasw;)V

    return-void
.end method

.method final synthetic zzaqa()V
    .registers 3

    .line 148
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqv;->zzglc:Lcom/google/android/gms/internal/ads/zzatq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzatq;->zzvo()Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object v0

    const-string v1, "persistFlags"

    .line 149
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbcc;->zza(Lcom/google/android/gms/internal/ads/zzdzc;Ljava/lang/String;)V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzatc;I)Lcom/google/android/gms/internal/ads/zzdzc;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzatc;",
            "I)",
            "Lcom/google/android/gms/internal/ads/zzdzc<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 10
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzle()Lcom/google/android/gms/internal/ads/zzalw;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcqv;->zzvr:Landroid/content/Context;

    .line 11
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbx;->zzyv()Lcom/google/android/gms/internal/ads/zzbbx;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzalw;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbbx;)Lcom/google/android/gms/internal/ads/zzamb;

    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcqv;->zzgld:Lcom/google/android/gms/internal/ads/zzbly;

    .line 13
    invoke-interface {v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzbly;->zza(Lcom/google/android/gms/internal/ads/zzatc;I)Lcom/google/android/gms/internal/ads/zzdhp;

    move-result-object v1

    .line 14
    sget-object v2, Lcom/google/android/gms/internal/ads/zzcrj;->zzglm:Lcom/google/android/gms/internal/ads/zzaly;

    sget-object v3, Lcom/google/android/gms/internal/ads/zzama;->zzdip:Lcom/google/android/gms/internal/ads/zzalv;

    const-string v4, "google.afma.response.normalize"

    .line 15
    invoke-virtual {v0, v4, v2, v3}, Lcom/google/android/gms/internal/ads/zzamb;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaly;Lcom/google/android/gms/internal/ads/zzalv;)Lcom/google/android/gms/internal/ads/zzalt;

    move-result-object v2

    .line 16
    new-instance v9, Lcom/google/android/gms/internal/ads/zzcro;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzcqv;->zzvr:Landroid/content/Context;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzatc;->zzdqm:Lcom/google/android/gms/internal/ads/zzbbx;

    iget-object v5, v3, Lcom/google/android/gms/internal/ads/zzbbx;->zzbre:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzcqv;->zzglb:Lcom/google/android/gms/internal/ads/zzatt;

    iget-object v7, p1, Lcom/google/android/gms/internal/ads/zzatc;->zzdrm:Ljava/lang/String;

    move-object v3, v9

    move v8, p2

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/zzcro;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzatt;Ljava/lang/String;I)V

    .line 17
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdhp;->zzafo()Lcom/google/android/gms/internal/ads/zzdsi;

    move-result-object p2

    .line 19
    sget-object v3, Lcom/google/android/gms/internal/ads/zzada;->zzdca:Lcom/google/android/gms/internal/ads/zzaci;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzaci;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_54

    .line 20
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzatc;->zzduc:Ljava/lang/String;

    if-eqz v3, :cond_72

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzatc;->zzduc:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_72

    const-string v3, "Request contained a PoolKey but split request is disabled."

    .line 21
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzayp;->zzei(Ljava/lang/String;)V

    goto :goto_72

    .line 24
    :cond_54
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzatc;->zzduc:Ljava/lang/String;

    if-eqz v3, :cond_72

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzatc;->zzduc:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_72

    .line 25
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcqv;->zzgle:Ljava/util/HashMap;

    iget-object v4, p1, Lcom/google/android/gms/internal/ads/zzatc;->zzduc:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/google/android/gms/internal/ads/zzcrk;

    if-nez v4, :cond_72

    const-string v3, "Request contained a PoolKey but no matching parameters were found."

    .line 27
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzayp;->zzei(Ljava/lang/String;)V

    :cond_72
    :goto_72
    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-nez v4, :cond_bd

    .line 33
    invoke-static {p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzcqv;->zza(Lcom/google/android/gms/internal/ads/zzatc;Lcom/google/android/gms/internal/ads/zzdsi;Lcom/google/android/gms/internal/ads/zzdhp;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p1

    .line 35
    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzcqv;->zza(Lcom/google/android/gms/internal/ads/zzdzc;Lcom/google/android/gms/internal/ads/zzdsi;Lcom/google/android/gms/internal/ads/zzamb;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object v0

    .line 36
    sget-object v1, Lcom/google/android/gms/internal/ads/zzdsf;->zzhkt:Lcom/google/android/gms/internal/ads/zzdsf;

    new-array v4, v6, [Lcom/google/android/gms/internal/ads/zzdzc;

    aput-object v0, v4, v5

    aput-object p1, v4, v3

    .line 37
    invoke-virtual {p2, v1, v4}, Lcom/google/android/gms/internal/ads/zzdru;->zza(Ljava/lang/Object;[Lcom/google/android/gms/internal/ads/zzdzc;)Lcom/google/android/gms/internal/ads/zzdrw;

    move-result-object v1

    new-instance v4, Lcom/google/android/gms/internal/ads/zzcqy;

    invoke-direct {v4, p1, v0}, Lcom/google/android/gms/internal/ads/zzcqy;-><init>(Lcom/google/android/gms/internal/ads/zzdzc;Lcom/google/android/gms/internal/ads/zzdzc;)V

    .line 38
    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/zzdrw;->zzb(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/zzdsa;

    move-result-object v1

    .line 39
    invoke-virtual {v1, v9}, Lcom/google/android/gms/internal/ads/zzdsa;->zzb(Lcom/google/android/gms/internal/ads/zzdrp;)Lcom/google/android/gms/internal/ads/zzdsa;

    move-result-object v1

    .line 40
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdsa;->zzavs()Lcom/google/android/gms/internal/ads/zzdrr;

    move-result-object v1

    .line 41
    sget-object v4, Lcom/google/android/gms/internal/ads/zzdsf;->zzhku:Lcom/google/android/gms/internal/ads/zzdsf;

    const/4 v7, 0x3

    new-array v7, v7, [Lcom/google/android/gms/internal/ads/zzdzc;

    aput-object p1, v7, v5

    aput-object v0, v7, v3

    aput-object v1, v7, v6

    .line 42
    invoke-virtual {p2, v4, v7}, Lcom/google/android/gms/internal/ads/zzdru;->zza(Ljava/lang/Object;[Lcom/google/android/gms/internal/ads/zzdzc;)Lcom/google/android/gms/internal/ads/zzdrw;

    move-result-object p2

    new-instance v3, Lcom/google/android/gms/internal/ads/zzcqx;

    invoke-direct {v3, v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzcqx;-><init>(Lcom/google/android/gms/internal/ads/zzdzc;Lcom/google/android/gms/internal/ads/zzdzc;Lcom/google/android/gms/internal/ads/zzdzc;)V

    .line 43
    invoke-virtual {p2, v3}, Lcom/google/android/gms/internal/ads/zzdrw;->zzb(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/zzdsa;

    move-result-object p1

    .line 44
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ads/zzdsa;->zza(Lcom/google/android/gms/internal/ads/zzdya;)Lcom/google/android/gms/internal/ads/zzdsa;

    move-result-object p1

    .line 45
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdsa;->zzavs()Lcom/google/android/gms/internal/ads/zzdrr;

    move-result-object p1

    return-object p1

    .line 48
    :cond_bd
    new-instance p1, Lcom/google/android/gms/internal/ads/zzcrn;

    iget-object v0, v4, Lcom/google/android/gms/internal/ads/zzcrk;->zzglk:Lorg/json/JSONObject;

    iget-object v1, v4, Lcom/google/android/gms/internal/ads/zzcrk;->zzgll:Lcom/google/android/gms/internal/ads/zzati;

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzcrn;-><init>(Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/zzati;)V

    .line 49
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdsf;->zzhkt:Lcom/google/android/gms/internal/ads/zzdsf;

    .line 50
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdyq;->zzaf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/internal/ads/zzdru;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzdzc;)Lcom/google/android/gms/internal/ads/zzdsa;

    move-result-object p1

    .line 51
    invoke-virtual {p1, v9}, Lcom/google/android/gms/internal/ads/zzdsa;->zzb(Lcom/google/android/gms/internal/ads/zzdrp;)Lcom/google/android/gms/internal/ads/zzdsa;

    move-result-object p1

    .line 52
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdsa;->zzavs()Lcom/google/android/gms/internal/ads/zzdrr;

    move-result-object p1

    .line 53
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzdyq;->zzaf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object v0

    .line 54
    sget-object v1, Lcom/google/android/gms/internal/ads/zzdsf;->zzhku:Lcom/google/android/gms/internal/ads/zzdsf;

    new-array v4, v6, [Lcom/google/android/gms/internal/ads/zzdzc;

    aput-object p1, v4, v5

    aput-object v0, v4, v3

    .line 55
    invoke-virtual {p2, v1, v4}, Lcom/google/android/gms/internal/ads/zzdru;->zza(Ljava/lang/Object;[Lcom/google/android/gms/internal/ads/zzdzc;)Lcom/google/android/gms/internal/ads/zzdrw;

    move-result-object p2

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcra;

    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzcra;-><init>(Lcom/google/android/gms/internal/ads/zzdzc;Lcom/google/android/gms/internal/ads/zzdzc;)V

    .line 56
    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/ads/zzdrw;->zzb(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/zzdsa;

    move-result-object p1

    .line 57
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ads/zzdsa;->zza(Lcom/google/android/gms/internal/ads/zzdya;)Lcom/google/android/gms/internal/ads/zzdsa;

    move-result-object p1

    .line 58
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdsa;->zzavs()Lcom/google/android/gms/internal/ads/zzdrr;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzatc;Lcom/google/android/gms/internal/ads/zzasw;)V
    .registers 4

    .line 131
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 132
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzcqv;->zzd(Lcom/google/android/gms/internal/ads/zzatc;I)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p1

    .line 133
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzcqv;->zza(Lcom/google/android/gms/internal/ads/zzdzc;Lcom/google/android/gms/internal/ads/zzasw;)V

    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzatc;I)Lcom/google/android/gms/internal/ads/zzdzc;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzatc;",
            "I)",
            "Lcom/google/android/gms/internal/ads/zzdzc<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 80
    sget-object v0, Lcom/google/android/gms/internal/ads/zzada;->zzdca:Lcom/google/android/gms/internal/ads/zzaci;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaci;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 81
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Split request is disabled."

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdyq;->immediateFailedFuture(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p1

    return-object p1

    .line 82
    :cond_1a
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzatc;->zzdub:Lcom/google/android/gms/internal/ads/zzdqg;

    if-nez v0, :cond_2a

    .line 83
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Pool configuration missing from request."

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdyq;->immediateFailedFuture(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p1

    return-object p1

    .line 84
    :cond_2a
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzatc;->zzdub:Lcom/google/android/gms/internal/ads/zzdqg;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzdqg;->zzhhy:I

    if-eqz v0, :cond_74

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzatc;->zzdub:Lcom/google/android/gms/internal/ads/zzdqg;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzdqg;->zzhhz:I

    if-nez v0, :cond_37

    goto :goto_74

    .line 86
    :cond_37
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzle()Lcom/google/android/gms/internal/ads/zzalw;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcqv;->zzvr:Landroid/content/Context;

    .line 87
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbx;->zzyv()Lcom/google/android/gms/internal/ads/zzbbx;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzalw;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbbx;)Lcom/google/android/gms/internal/ads/zzamb;

    move-result-object v0

    .line 88
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcqv;->zzgld:Lcom/google/android/gms/internal/ads/zzbly;

    .line 89
    invoke-interface {v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzbly;->zza(Lcom/google/android/gms/internal/ads/zzatc;I)Lcom/google/android/gms/internal/ads/zzdhp;

    move-result-object p2

    .line 90
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzdhp;->zzafo()Lcom/google/android/gms/internal/ads/zzdsi;

    move-result-object v1

    .line 92
    invoke-static {p1, v1, p2}, Lcom/google/android/gms/internal/ads/zzcqv;->zza(Lcom/google/android/gms/internal/ads/zzatc;Lcom/google/android/gms/internal/ads/zzdsi;Lcom/google/android/gms/internal/ads/zzdhp;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p1

    .line 94
    invoke-static {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzcqv;->zza(Lcom/google/android/gms/internal/ads/zzdzc;Lcom/google/android/gms/internal/ads/zzdsi;Lcom/google/android/gms/internal/ads/zzamb;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p2

    .line 95
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdsf;->zzhli:Lcom/google/android/gms/internal/ads/zzdsf;

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/google/android/gms/internal/ads/zzdzc;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    .line 96
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzdru;->zza(Ljava/lang/Object;[Lcom/google/android/gms/internal/ads/zzdzc;)Lcom/google/android/gms/internal/ads/zzdrw;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcrd;

    invoke-direct {v1, p0, p2, p1}, Lcom/google/android/gms/internal/ads/zzcrd;-><init>(Lcom/google/android/gms/internal/ads/zzcqv;Lcom/google/android/gms/internal/ads/zzdzc;Lcom/google/android/gms/internal/ads/zzdzc;)V

    .line 97
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdrw;->zzb(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/zzdsa;

    move-result-object p1

    .line 98
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdsa;->zzavs()Lcom/google/android/gms/internal/ads/zzdrr;

    move-result-object p1

    return-object p1

    .line 85
    :cond_74
    :goto_74
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Caching is disabled."

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdyq;->immediateFailedFuture(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p1

    return-object p1
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzatc;Lcom/google/android/gms/internal/ads/zzasw;)V
    .registers 4

    .line 107
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 108
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzcqv;->zzc(Lcom/google/android/gms/internal/ads/zzatc;I)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p1

    .line 109
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzcqv;->zza(Lcom/google/android/gms/internal/ads/zzdzc;Lcom/google/android/gms/internal/ads/zzasw;)V

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzatc;I)Lcom/google/android/gms/internal/ads/zzdzc;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzatc;",
            "I)",
            "Lcom/google/android/gms/internal/ads/zzdzc<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 114
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzle()Lcom/google/android/gms/internal/ads/zzalw;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcqv;->zzvr:Landroid/content/Context;

    .line 115
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbx;->zzyv()Lcom/google/android/gms/internal/ads/zzbbx;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzalw;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbbx;)Lcom/google/android/gms/internal/ads/zzamb;

    move-result-object v0

    .line 116
    sget-object v1, Lcom/google/android/gms/internal/ads/zzadg;->zzdcr:Lcom/google/android/gms/internal/ads/zzaci;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaci;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_28

    .line 117
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Signal collection disabled."

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdyq;->immediateFailedFuture(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p1

    return-object p1

    .line 118
    :cond_28
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcqv;->zzgld:Lcom/google/android/gms/internal/ads/zzbly;

    .line 119
    invoke-interface {v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzbly;->zza(Lcom/google/android/gms/internal/ads/zzatc;I)Lcom/google/android/gms/internal/ads/zzdhp;

    move-result-object p2

    .line 120
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzdhp;->zzafn()Lcom/google/android/gms/internal/ads/zzdgw;

    move-result-object v1

    .line 121
    sget-object v2, Lcom/google/android/gms/internal/ads/zzama;->zzdio:Lcom/google/android/gms/internal/ads/zzalx;

    sget-object v3, Lcom/google/android/gms/internal/ads/zzama;->zzdip:Lcom/google/android/gms/internal/ads/zzalv;

    const-string v4, "google.afma.request.getSignals"

    .line 122
    invoke-virtual {v0, v4, v2, v3}, Lcom/google/android/gms/internal/ads/zzamb;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaly;Lcom/google/android/gms/internal/ads/zzalv;)Lcom/google/android/gms/internal/ads/zzalt;

    move-result-object v0

    .line 123
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzdhp;->zzafo()Lcom/google/android/gms/internal/ads/zzdsi;

    move-result-object p2

    .line 124
    sget-object v2, Lcom/google/android/gms/internal/ads/zzdsf;->zzhkv:Lcom/google/android/gms/internal/ads/zzdsf;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzatc;->zzdty:Landroid/os/Bundle;

    .line 125
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdyq;->zzaf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p1

    invoke-virtual {p2, v2, p1}, Lcom/google/android/gms/internal/ads/zzdru;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzdzc;)Lcom/google/android/gms/internal/ads/zzdsa;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzcrg;

    invoke-direct {p2, v1}, Lcom/google/android/gms/internal/ads/zzcrg;-><init>(Lcom/google/android/gms/internal/ads/zzdgw;)V

    .line 126
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzdsa;->zza(Lcom/google/android/gms/internal/ads/zzdya;)Lcom/google/android/gms/internal/ads/zzdsa;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/ads/zzdsf;->zzhkw:Lcom/google/android/gms/internal/ads/zzdsf;

    .line 127
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzdsa;->zzw(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdsa;

    move-result-object p1

    .line 128
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzdsa;->zza(Lcom/google/android/gms/internal/ads/zzdya;)Lcom/google/android/gms/internal/ads/zzdsa;

    move-result-object p1

    .line 129
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdsa;->zzavs()Lcom/google/android/gms/internal/ads/zzdrr;

    move-result-object p1

    return-object p1
.end method

.method public final zzgn(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdzc;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzdzc<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 100
    sget-object v0, Lcom/google/android/gms/internal/ads/zzada;->zzdca:Lcom/google/android/gms/internal/ads/zzaci;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaci;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 101
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Split request is disabled."

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdyq;->immediateFailedFuture(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p1

    return-object p1

    .line 102
    :cond_1a
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcri;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzcri;-><init>(Lcom/google/android/gms/internal/ads/zzcqv;)V

    .line 103
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcqv;->zzgle:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzcrk;

    if-nez v1, :cond_49

    .line 105
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "URL to be removed not found for cache key: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3c

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_41

    :cond_3c
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_41
    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdyq;->immediateFailedFuture(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p1

    return-object p1

    .line 106
    :cond_49
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdyq;->zzaf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p1

    return-object p1
.end method
