.class final Lcom/google/android/gms/internal/drive/zzlc;
.super Lcom/google/android/gms/internal/drive/zzla;


# static fields
.field private static final zzto:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 49
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/drive/zzlc;->zzto:Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/drive/zzla;-><init>(Lcom/google/android/gms/internal/drive/zzlb;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/drive/zzlb;)V
    .registers 2

    .line 48
    invoke-direct {p0}, Lcom/google/android/gms/internal/drive/zzlc;-><init>()V

    return-void
.end method

.method private static zzb(Ljava/lang/Object;J)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "J)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 47
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method final zza(Ljava/lang/Object;J)V
    .registers 7

    .line 2
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 3
    instance-of v1, v0, Lcom/google/android/gms/internal/drive/zzkz;

    if-eqz v1, :cond_11

    .line 4
    check-cast v0, Lcom/google/android/gms/internal/drive/zzkz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/drive/zzkz;->zzds()Lcom/google/android/gms/internal/drive/zzkz;

    move-result-object v0

    goto :goto_36

    .line 5
    :cond_11
    sget-object v1, Lcom/google/android/gms/internal/drive/zzlc;->zzto:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1e

    return-void

    .line 7
    :cond_1e
    instance-of v1, v0, Lcom/google/android/gms/internal/drive/zzmc;

    if-eqz v1, :cond_32

    instance-of v1, v0, Lcom/google/android/gms/internal/drive/zzkp;

    if-eqz v1, :cond_32

    .line 8
    check-cast v0, Lcom/google/android/gms/internal/drive/zzkp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/drive/zzkp;->zzbo()Z

    move-result p1

    if-eqz p1, :cond_31

    .line 9
    invoke-interface {v0}, Lcom/google/android/gms/internal/drive/zzkp;->zzbp()V

    :cond_31
    return-void

    .line 11
    :cond_32
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 12
    :goto_36
    invoke-static {p1, p2, p3, v0}, Lcom/google/android/gms/internal/drive/zznd;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method final zza(Ljava/lang/Object;Ljava/lang/Object;J)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "J)V"
        }
    .end annotation

    .line 14
    invoke-static {p2, p3, p4}, Lcom/google/android/gms/internal/drive/zzlc;->zzb(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object p2

    .line 15
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 16
    invoke-static {p1, p3, p4}, Lcom/google/android/gms/internal/drive/zzlc;->zzb(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 17
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_34

    .line 18
    instance-of v2, v1, Lcom/google/android/gms/internal/drive/zzkz;

    if-eqz v2, :cond_1c

    .line 19
    new-instance v1, Lcom/google/android/gms/internal/drive/zzky;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/drive/zzky;-><init>(I)V

    goto :goto_30

    .line 20
    :cond_1c
    instance-of v2, v1, Lcom/google/android/gms/internal/drive/zzmc;

    if-eqz v2, :cond_2b

    instance-of v2, v1, Lcom/google/android/gms/internal/drive/zzkp;

    if-eqz v2, :cond_2b

    .line 21
    check-cast v1, Lcom/google/android/gms/internal/drive/zzkp;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/drive/zzkp;->zzr(I)Lcom/google/android/gms/internal/drive/zzkp;

    move-result-object v1

    goto :goto_30

    .line 22
    :cond_2b
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 23
    :goto_30
    invoke-static {p1, p3, p4, v1}, Lcom/google/android/gms/internal/drive/zznd;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_87

    .line 24
    :cond_34
    sget-object v2, Lcom/google/android/gms/internal/drive/zzlc;->zzto:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_52

    .line 25
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v3, v0

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 26
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 28
    invoke-static {p1, p3, p4, v2}, Lcom/google/android/gms/internal/drive/zznd;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_50
    move-object v1, v2

    goto :goto_87

    .line 29
    :cond_52
    instance-of v2, v1, Lcom/google/android/gms/internal/drive/zzna;

    if-eqz v2, :cond_69

    .line 30
    new-instance v2, Lcom/google/android/gms/internal/drive/zzky;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v3, v0

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/drive/zzky;-><init>(I)V

    .line 31
    check-cast v1, Lcom/google/android/gms/internal/drive/zzna;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/drive/zziw;->addAll(Ljava/util/Collection;)Z

    .line 33
    invoke-static {p1, p3, p4, v2}, Lcom/google/android/gms/internal/drive/zznd;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_50

    .line 34
    :cond_69
    instance-of v2, v1, Lcom/google/android/gms/internal/drive/zzmc;

    if-eqz v2, :cond_87

    instance-of v2, v1, Lcom/google/android/gms/internal/drive/zzkp;

    if-eqz v2, :cond_87

    move-object v2, v1

    check-cast v2, Lcom/google/android/gms/internal/drive/zzkp;

    .line 35
    invoke-interface {v2}, Lcom/google/android/gms/internal/drive/zzkp;->zzbo()Z

    move-result v3

    if-nez v3, :cond_87

    .line 36
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, v0

    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/drive/zzkp;->zzr(I)Lcom/google/android/gms/internal/drive/zzkp;

    move-result-object v0

    .line 37
    invoke-static {p1, p3, p4, v0}, Lcom/google/android/gms/internal/drive/zznd;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object v1, v0

    .line 40
    :cond_87
    :goto_87
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 41
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v0, :cond_96

    if-lez v2, :cond_96

    .line 43
    invoke-interface {v1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_96
    if-lez v0, :cond_99

    move-object p2, v1

    .line 45
    :cond_99
    invoke-static {p1, p3, p4, p2}, Lcom/google/android/gms/internal/drive/zznd;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method
