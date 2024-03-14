.class public final Lcom/google/android/gms/internal/ads/zzear;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzear$zzb;,
        Lcom/google/android/gms/internal/ads/zzear$zza;
    }
.end annotation


# static fields
.field private static final logger:Ljava/util/logging/Logger;

.field private static final zzhut:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzear$zza;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzhuu:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzear$zzb;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzhuv:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzhuw:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzdzy<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final zzhux:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/google/android/gms/internal/ads/zzeaq<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 173
    const-class v0, Lcom/google/android/gms/internal/ads/zzear;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzear;->logger:Ljava/util/logging/Logger;

    .line 174
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzear;->zzhut:Ljava/util/concurrent/ConcurrentMap;

    .line 175
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzear;->zzhuu:Ljava/util/concurrent/ConcurrentMap;

    .line 176
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzear;->zzhuv:Ljava/util/concurrent/ConcurrentMap;

    .line 177
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzear;->zzhuw:Ljava/util/concurrent/ConcurrentMap;

    .line 178
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzear;->zzhux:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    if-eqz p0, :cond_3

    return-object p0

    .line 31
    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method

.method private static zza(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzeab;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TP;>;)",
            "Lcom/google/android/gms/internal/ads/zzeab<",
            "TP;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 112
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzear;->zzhm(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzear$zza;

    move-result-object p0

    if-nez p1, :cond_b

    .line 114
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzear$zza;->zzayy()Lcom/google/android/gms/internal/ads/zzeab;

    move-result-object p0

    return-object p0

    .line 116
    :cond_b
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzear$zza;->zzayp()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 117
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzear$zza;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzeab;

    move-result-object p0

    return-object p0

    .line 118
    :cond_1a
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 119
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    .line 120
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzear$zza;->zzayz()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 121
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzear$zza;->zzayp()Ljava/util/Set;

    move-result-object p0

    .line 122
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x1

    .line 124
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_36
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_52

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    if-nez v3, :cond_49

    const-string v3, ", "

    .line 126
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    :cond_49
    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    goto :goto_36

    .line 130
    :cond_52
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 131
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x4d

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Primitive type "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not supported by key manager of type "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", supported primitives: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzeah;Lcom/google/android/gms/internal/ads/zzeab;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzeao;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/zzeah;",
            "Lcom/google/android/gms/internal/ads/zzeab<",
            "TP;>;",
            "Ljava/lang/Class<",
            "TP;>;)",
            "Lcom/google/android/gms/internal/ads/zzeao<",
            "TP;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 151
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzear;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    .line 152
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeah;->zzays()Lcom/google/android/gms/internal/ads/zzefj;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzeay;->zzc(Lcom/google/android/gms/internal/ads/zzefj;)V

    .line 153
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzeao;->zza(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzeao;

    move-result-object p2

    .line 154
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeah;->zzays()Lcom/google/android/gms/internal/ads/zzefj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzefj;->zzbch()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1d
    :goto_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzefj$zzb;

    .line 155
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzefj$zzb;->zzayu()Lcom/google/android/gms/internal/ads/zzefc;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/ads/zzefc;->zzhzt:Lcom/google/android/gms/internal/ads/zzefc;

    if-ne v2, v3, :cond_1d

    .line 158
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzefj$zzb;->zzbcl()Lcom/google/android/gms/internal/ads/zzefb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzefb;->zzbbt()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzefj$zzb;->zzbcl()Lcom/google/android/gms/internal/ads/zzefb;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzefb;->zzbbu()Lcom/google/android/gms/internal/ads/zzeip;

    move-result-object v3

    .line 159
    invoke-static {v2, v3, p1}, Lcom/google/android/gms/internal/ads/zzear;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzeip;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    .line 160
    invoke-virtual {p2, v2, v1}, Lcom/google/android/gms/internal/ads/zzeao;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzefj$zzb;)Lcom/google/android/gms/internal/ads/zzean;

    move-result-object v2

    .line 161
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzefj$zzb;->zzbcm()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeah;->zzays()Lcom/google/android/gms/internal/ads/zzefj;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzefj;->zzbcg()I

    move-result v3

    if-ne v1, v3, :cond_1d

    .line 162
    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/ads/zzeao;->zza(Lcom/google/android/gms/internal/ads/zzean;)V

    goto :goto_1d

    :cond_5b
    return-object p2
.end method

.method private static zza(Lcom/google/android/gms/internal/ads/zzeag;)Lcom/google/android/gms/internal/ads/zzear$zza;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<KeyProtoT::",
            "Lcom/google/android/gms/internal/ads/zzelj;",
            ">(",
            "Lcom/google/android/gms/internal/ads/zzeag<",
            "TKeyProtoT;>;)",
            "Lcom/google/android/gms/internal/ads/zzear$zza;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeat;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzeat;-><init>(Lcom/google/android/gms/internal/ads/zzeag;)V

    return-object v0
.end method

.method public static declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzefe;)Lcom/google/android/gms/internal/ads/zzefb;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const-class v0, Lcom/google/android/gms/internal/ads/zzear;

    monitor-enter v0

    .line 132
    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzefe;->zzbbt()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzear;->zzho(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzeab;

    move-result-object v1

    .line 133
    sget-object v2, Lcom/google/android/gms/internal/ads/zzear;->zzhuv:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzefe;->zzbbt()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 134
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzefe;->zzbbu()Lcom/google/android/gms/internal/ads/zzeip;

    move-result-object p0

    invoke-interface {v1, p0}, Lcom/google/android/gms/internal/ads/zzeab;->zzo(Lcom/google/android/gms/internal/ads/zzeip;)Lcom/google/android/gms/internal/ads/zzefb;

    move-result-object p0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_47

    monitor-exit v0

    return-object p0

    .line 135
    :cond_27
    :try_start_27
    new-instance v1, Ljava/security/GeneralSecurityException;

    const-string v2, "newKey-operation not permitted for key type "

    .line 136
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzefe;->zzbbt()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_3e

    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_43

    :cond_3e
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_43
    invoke-direct {v1, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_47
    .catchall {:try_start_27 .. :try_end_47} :catchall_47

    :catchall_47
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzeao;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/zzeao<",
            "TP;>;)TP;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 166
    sget-object v0, Lcom/google/android/gms/internal/ads/zzear;->zzhux:Ljava/util/concurrent/ConcurrentMap;

    .line 167
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeao;->zzayk()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzeaq;

    if-nez v0, :cond_32

    .line 169
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "No wrapper found for "

    .line 170
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeao;->zzayk()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_29

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2e

    :cond_29
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_2e
    invoke-direct {v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :cond_32
    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/zzeaq;->zza(Lcom/google/android/gms/internal/ads/zzeao;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzeip;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzeip;",
            "Ljava/lang/Class<",
            "TP;>;)TP;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 146
    invoke-static {p0, p2}, Lcom/google/android/gms/internal/ads/zzear;->zza(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzeab;

    move-result-object p0

    .line 147
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzeab;->zzm(Lcom/google/android/gms/internal/ads/zzeip;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzelj;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzelj;",
            "Ljava/lang/Class<",
            "TP;>;)TP;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 142
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzear;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Class;

    .line 143
    invoke-static {p0, p2}, Lcom/google/android/gms/internal/ads/zzear;->zza(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzeab;

    move-result-object p0

    .line 144
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzeab;->zza(Lcom/google/android/gms/internal/ads/zzelj;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static zza(Ljava/lang/String;[BLjava/lang/Class;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "[B",
            "Ljava/lang/Class<",
            "TP;>;)TP;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 148
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzeip;->zzu([B)Lcom/google/android/gms/internal/ads/zzeip;

    move-result-object p1

    .line 149
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzear;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Class;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzear;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzeip;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzeab;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/zzeab<",
            "TP;>;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const-class v0, Lcom/google/android/gms/internal/ads/zzear;

    monitor-enter v0

    if-eqz p0, :cond_2f

    .line 46
    :try_start_5
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzeab;->getKeyType()Ljava/lang/String;

    move-result-object v1

    .line 47
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzear;->zza(Ljava/lang/String;Ljava/lang/Class;Z)V

    .line 48
    sget-object v2, Lcom/google/android/gms/internal/ads/zzear;->zzhut:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    .line 49
    sget-object v2, Lcom/google/android/gms/internal/ads/zzear;->zzhut:Ljava/util/concurrent/ConcurrentMap;

    .line 51
    new-instance v3, Lcom/google/android/gms/internal/ads/zzeau;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/ads/zzeau;-><init>(Lcom/google/android/gms/internal/ads/zzeab;)V

    .line 52
    invoke-interface {v2, v1, v3}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    :cond_22
    sget-object p0, Lcom/google/android/gms/internal/ads/zzear;->zzhuv:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, v1, p1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2b
    .catchall {:try_start_5 .. :try_end_2b} :catchall_2d

    .line 54
    monitor-exit v0

    return-void

    :catchall_2d
    move-exception p0

    goto :goto_37

    .line 45
    :cond_2f
    :try_start_2f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "key manager must be non-null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_37
    .catchall {:try_start_2f .. :try_end_37} :catchall_2d

    :goto_37
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzeag;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<KeyProtoT::",
            "Lcom/google/android/gms/internal/ads/zzelj;",
            ">(",
            "Lcom/google/android/gms/internal/ads/zzeag<",
            "TKeyProtoT;>;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const-class p1, Lcom/google/android/gms/internal/ads/zzear;

    monitor-enter p1

    .line 55
    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeag;->getKeyType()Ljava/lang/String;

    move-result-object v0

    .line 56
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzear;->zza(Ljava/lang/String;Ljava/lang/Class;Z)V

    .line 57
    sget-object v1, Lcom/google/android/gms/internal/ads/zzear;->zzhut:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    .line 58
    sget-object v1, Lcom/google/android/gms/internal/ads/zzear;->zzhut:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzear;->zza(Lcom/google/android/gms/internal/ads/zzeag;)Lcom/google/android/gms/internal/ads/zzear$zza;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v1, Lcom/google/android/gms/internal/ads/zzear;->zzhuu:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzear;->zzb(Lcom/google/android/gms/internal/ads/zzeag;)Lcom/google/android/gms/internal/ads/zzear$zzb;

    move-result-object p0

    invoke-interface {v1, v0, p0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    :cond_29
    sget-object p0, Lcom/google/android/gms/internal/ads/zzear;->zzhuv:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_34

    .line 61
    monitor-exit p1

    return-void

    :catchall_34
    move-exception p0

    monitor-exit p1

    throw p0
.end method

.method public static declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzeaq;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/zzeaq<",
            "TP;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const-class v0, Lcom/google/android/gms/internal/ads/zzear;

    monitor-enter v0

    if-eqz p0, :cond_82

    .line 95
    :try_start_5
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzeaq;->zzayk()Ljava/lang/Class;

    move-result-object v1

    .line 96
    sget-object v2, Lcom/google/android/gms/internal/ads/zzear;->zzhux:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_79

    .line 97
    sget-object v2, Lcom/google/android/gms/internal/ads/zzear;->zzhux:Ljava/util/concurrent/ConcurrentMap;

    .line 98
    invoke-interface {v2, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzeaq;

    .line 99
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_79

    .line 100
    sget-object v3, Lcom/google/android/gms/internal/ads/zzear;->logger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v5, "com.google.crypto.tink.Registry"

    const-string v6, "registerPrimitiveWrapper"

    const-string v7, "Attempted overwrite of a registered SetWrapper for type "

    .line 101
    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_44

    invoke-virtual {v7, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_4a

    :cond_44
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v7, v8

    .line 102
    :goto_4a
    invoke-virtual {v3, v4, v5, v6, v7}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    new-instance v3, Ljava/security/GeneralSecurityException;

    const-string v4, "SetWrapper for primitive (%s) is already registered to be %s, cannot be re-registered with %s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 104
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v6

    const/4 v1, 0x1

    .line 105
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    const/4 v1, 0x2

    .line 106
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v5, v1

    .line 107
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 108
    :cond_79
    sget-object v2, Lcom/google/android/gms/internal/ads/zzear;->zzhux:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v1, p0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7e
    .catchall {:try_start_5 .. :try_end_7e} :catchall_80

    .line 109
    monitor-exit v0

    return-void

    :catchall_80
    move-exception p0

    goto :goto_8a

    .line 94
    :cond_82
    :try_start_82
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v1, "wrapper must be non-null"

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_8a
    .catchall {:try_start_82 .. :try_end_8a} :catchall_80

    :goto_8a
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzeas;Lcom/google/android/gms/internal/ads/zzeag;Z)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<KeyProtoT::",
            "Lcom/google/android/gms/internal/ads/zzelj;",
            "PublicKeyProtoT::",
            "Lcom/google/android/gms/internal/ads/zzelj;",
            ">(",
            "Lcom/google/android/gms/internal/ads/zzeas<",
            "TKeyProtoT;TPublicKeyProtoT;>;",
            "Lcom/google/android/gms/internal/ads/zzeag<",
            "TPublicKeyProtoT;>;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const-class p2, Lcom/google/android/gms/internal/ads/zzear;

    monitor-enter p2

    .line 62
    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeag;->getKeyType()Ljava/lang/String;

    move-result-object v0

    .line 63
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeag;->getKeyType()Ljava/lang/String;

    move-result-object v1

    .line 64
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzear;->zza(Ljava/lang/String;Ljava/lang/Class;Z)V

    .line 65
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {v1, v2, v4}, Lcom/google/android/gms/internal/ads/zzear;->zza(Ljava/lang/String;Ljava/lang/Class;Z)V

    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f1

    .line 68
    sget-object v2, Lcom/google/android/gms/internal/ads/zzear;->zzhut:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v0}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a3

    .line 69
    sget-object v2, Lcom/google/android/gms/internal/ads/zzear;->zzhut:Ljava/util/concurrent/ConcurrentMap;

    .line 70
    invoke-interface {v2, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzear$zza;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzear$zza;->zzaza()Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_a3

    .line 72
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_42

    goto :goto_a3

    .line 73
    :cond_42
    sget-object v5, Lcom/google/android/gms/internal/ads/zzear;->logger:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v7, "com.google.crypto.tink.Registry"

    const-string v8, "registerAsymmetricKeyManagers"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, 0x60

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v9, v10

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v9, "Attempted overwrite of a registered key manager for key type "

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " with inconsistent public key type "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v6, v7, v8, v0}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "public key manager corresponding to %s is already registered with %s, cannot be re-registered with %s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    .line 75
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v5, v4

    .line 76
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v5, v3

    const/4 p0, 0x2

    .line 77
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, p0

    .line 78
    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_a3
    :goto_a3
    sget-object v2, Lcom/google/android/gms/internal/ads/zzear;->zzhut:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v0}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b9

    sget-object v2, Lcom/google/android/gms/internal/ads/zzear;->zzhut:Ljava/util/concurrent/ConcurrentMap;

    .line 80
    invoke-interface {v2, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzear$zza;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzear$zza;->zzaza()Ljava/lang/Class;

    move-result-object v2

    if-nez v2, :cond_cc

    .line 81
    :cond_b9
    sget-object v2, Lcom/google/android/gms/internal/ads/zzear;->zzhut:Ljava/util/concurrent/ConcurrentMap;

    .line 85
    new-instance v5, Lcom/google/android/gms/internal/ads/zzeaw;

    invoke-direct {v5, p0, p1}, Lcom/google/android/gms/internal/ads/zzeaw;-><init>(Lcom/google/android/gms/internal/ads/zzeas;Lcom/google/android/gms/internal/ads/zzeag;)V

    .line 86
    invoke-interface {v2, v0, v5}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v2, Lcom/google/android/gms/internal/ads/zzear;->zzhuu:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzear;->zzb(Lcom/google/android/gms/internal/ads/zzeag;)Lcom/google/android/gms/internal/ads/zzear$zzb;

    move-result-object p0

    invoke-interface {v2, v0, p0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    :cond_cc
    sget-object p0, Lcom/google/android/gms/internal/ads/zzear;->zzhuv:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {p0, v0, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object p0, Lcom/google/android/gms/internal/ads/zzear;->zzhut:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p0, v1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e6

    .line 90
    sget-object p0, Lcom/google/android/gms/internal/ads/zzear;->zzhut:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzear;->zza(Lcom/google/android/gms/internal/ads/zzeag;)Lcom/google/android/gms/internal/ads/zzear$zza;

    move-result-object p1

    invoke-interface {p0, v1, p1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    :cond_e6
    sget-object p0, Lcom/google/android/gms/internal/ads/zzear;->zzhuv:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, v1, p1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_ef
    .catchall {:try_start_3 .. :try_end_ef} :catchall_f9

    .line 92
    monitor-exit p2

    return-void

    .line 67
    :cond_f1
    :try_start_f1
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "Private and public key type must be different."

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_f9
    .catchall {:try_start_f1 .. :try_end_f9} :catchall_f9

    :catchall_f9
    move-exception p0

    monitor-exit p2

    throw p0
.end method

.method private static declared-synchronized zza(Ljava/lang/String;Ljava/lang/Class;Z)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const-class v0, Lcom/google/android/gms/internal/ads/zzear;

    monitor-enter v0

    .line 33
    :try_start_3
    sget-object v1, Lcom/google/android/gms/internal/ads/zzear;->zzhut:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p0}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_93

    if-nez v1, :cond_d

    .line 34
    monitor-exit v0

    return-void

    .line 35
    :cond_d
    :try_start_d
    sget-object v1, Lcom/google/android/gms/internal/ads/zzear;->zzhut:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzear$zza;

    .line 36
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzear$zza;->zzayz()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_65

    .line 37
    sget-object p2, Lcom/google/android/gms/internal/ads/zzear;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "com.google.crypto.tink.Registry"

    const-string v4, "ensureKeyManagerInsertable"

    const-string v5, "Attempted overwrite of a registered key manager for key type "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_38

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_3e

    :cond_38
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v5, v6

    :goto_3e
    invoke-virtual {p2, v2, v3, v4, v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    new-instance p2, Ljava/security/GeneralSecurityException;

    const-string v2, "typeUrl (%s) is already registered with %s, cannot be re-registered with %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 p0, 0x1

    .line 39
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzear$zza;->zzayz()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, p0

    const/4 p0, 0x2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, p0

    .line 40
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_65
    if-eqz p2, :cond_91

    .line 41
    sget-object p1, Lcom/google/android/gms/internal/ads/zzear;->zzhuv:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_91

    .line 42
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "New keys are already disallowed for key type "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_88

    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_8d

    :cond_88
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_8d
    invoke-direct {p1, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_91
    .catchall {:try_start_d .. :try_end_91} :catchall_93

    .line 43
    :cond_91
    monitor-exit v0

    return-void

    :catchall_93
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static zzb(Lcom/google/android/gms/internal/ads/zzeag;)Lcom/google/android/gms/internal/ads/zzear$zzb;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<KeyProtoT::",
            "Lcom/google/android/gms/internal/ads/zzelj;",
            ">(",
            "Lcom/google/android/gms/internal/ads/zzeag<",
            "TKeyProtoT;>;)",
            "Lcom/google/android/gms/internal/ads/zzear$zzb;"
        }
    .end annotation

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeav;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzeav;-><init>(Lcom/google/android/gms/internal/ads/zzeag;)V

    return-object v0
.end method

.method public static declared-synchronized zzb(Lcom/google/android/gms/internal/ads/zzefe;)Lcom/google/android/gms/internal/ads/zzelj;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const-class v0, Lcom/google/android/gms/internal/ads/zzear;

    monitor-enter v0

    .line 137
    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzefe;->zzbbt()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzear;->zzho(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzeab;

    move-result-object v1

    .line 138
    sget-object v2, Lcom/google/android/gms/internal/ads/zzear;->zzhuv:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzefe;->zzbbt()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 139
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzefe;->zzbbu()Lcom/google/android/gms/internal/ads/zzeip;

    move-result-object p0

    invoke-interface {v1, p0}, Lcom/google/android/gms/internal/ads/zzeab;->zzn(Lcom/google/android/gms/internal/ads/zzeip;)Lcom/google/android/gms/internal/ads/zzelj;

    move-result-object p0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_47

    monitor-exit v0

    return-object p0

    .line 140
    :cond_27
    :try_start_27
    new-instance v1, Ljava/security/GeneralSecurityException;

    const-string v2, "newKey-operation not permitted for key type "

    .line 141
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzefe;->zzbbt()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_3e

    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_43

    :cond_3e
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_43
    invoke-direct {v1, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_47
    .catchall {:try_start_27 .. :try_end_47} :catchall_47

    :catchall_47
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static declared-synchronized zzhm(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzear$zza;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const-class v0, Lcom/google/android/gms/internal/ads/zzear;

    monitor-enter v0

    .line 4
    :try_start_3
    sget-object v1, Lcom/google/android/gms/internal/ads/zzear;->zzhut:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p0}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 5
    new-instance v1, Ljava/security/GeneralSecurityException;

    const-string v2, "No key manager found for key type "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1e

    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_23

    :cond_1e
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_23
    invoke-direct {v1, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 6
    :cond_27
    sget-object v1, Lcom/google/android/gms/internal/ads/zzear;->zzhut:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzear$zza;
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_31

    monitor-exit v0

    return-object p0

    :catchall_31
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static zzhn(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdzy;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzdzy<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p0, :cond_da

    .line 9
    sget-object v0, Lcom/google/android/gms/internal/ads/zzear;->zzhuw:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdzy;

    if-nez v0, :cond_d9

    const/4 v0, 0x1

    .line 11
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string v1, "no catalogue found for %s. "

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 12
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "tinkaead"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 13
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Maybe call AeadConfig.register()."

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 14
    :cond_32
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "tinkdeterministicaead"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c9

    .line 16
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "tinkstreamingaead"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_be

    .line 18
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "tinkhybriddecrypt"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b3

    .line 19
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "tinkhybridencrypt"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b3

    .line 21
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "tinkmac"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a8

    .line 23
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "tinkpublickeysign"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9d

    .line 24
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "tinkpublickeyverify"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9d

    .line 26
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v1, "tink"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_d3

    .line 27
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Maybe call TinkConfig.register()."

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_d3

    .line 25
    :cond_9d
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Maybe call SignatureConfig.register()."

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_d3

    .line 22
    :cond_a8
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Maybe call MacConfig.register()."

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_d3

    .line 20
    :cond_b3
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Maybe call HybridConfig.register()."

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_d3

    .line 17
    :cond_be
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Maybe call StreamingAeadConfig.register()."

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_d3

    .line 15
    :cond_c9
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Maybe call DeterministicAeadConfig.register()."

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 28
    :cond_d3
    :goto_d3
    new-instance p0, Ljava/security/GeneralSecurityException;

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d9
    return-object v0

    .line 8
    :cond_da
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "catalogueName must be non-null."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static zzho(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzeab;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzeab<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 110
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzear;->zzhm(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzear$zza;

    move-result-object p0

    .line 111
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzear$zza;->zzayy()Lcom/google/android/gms/internal/ads/zzeab;

    move-result-object p0

    return-object p0
.end method
