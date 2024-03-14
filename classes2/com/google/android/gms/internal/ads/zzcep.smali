.class public final Lcom/google/android/gms/internal/ads/zzcep;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# static fields
.field public static final zzgap:Lcom/google/android/gms/internal/ads/zzcep;


# instance fields
.field private final zzgai:Lcom/google/android/gms/internal/ads/zzaff;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzgaj:Lcom/google/android/gms/internal/ads/zzafe;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzgak:Lcom/google/android/gms/internal/ads/zzaft;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzgal:Lcom/google/android/gms/internal/ads/zzafs;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzgam:Lcom/google/android/gms/internal/ads/zzajk;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzgan:Landroidx/collection/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SimpleArrayMap<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzafl;",
            ">;"
        }
    .end annotation
.end field

.field private final zzgao:Landroidx/collection/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SimpleArrayMap<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzafk;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 35
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcer;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcer;-><init>()V

    .line 36
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcer;->zzamw()Lcom/google/android/gms/internal/ads/zzcep;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzcep;->zzgap:Lcom/google/android/gms/internal/ads/zzcep;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzcer;)V
    .registers 4

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzcer;->zzgai:Lcom/google/android/gms/internal/ads/zzaff;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcep;->zzgai:Lcom/google/android/gms/internal/ads/zzaff;

    .line 27
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzcer;->zzgaj:Lcom/google/android/gms/internal/ads/zzafe;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcep;->zzgaj:Lcom/google/android/gms/internal/ads/zzafe;

    .line 28
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzcer;->zzgak:Lcom/google/android/gms/internal/ads/zzaft;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcep;->zzgak:Lcom/google/android/gms/internal/ads/zzaft;

    .line 29
    new-instance v0, Landroidx/collection/SimpleArrayMap;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzcer;->zzgan:Landroidx/collection/SimpleArrayMap;

    invoke-direct {v0, v1}, Landroidx/collection/SimpleArrayMap;-><init>(Landroidx/collection/SimpleArrayMap;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcep;->zzgan:Landroidx/collection/SimpleArrayMap;

    .line 30
    new-instance v0, Landroidx/collection/SimpleArrayMap;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzcer;->zzgao:Landroidx/collection/SimpleArrayMap;

    invoke-direct {v0, v1}, Landroidx/collection/SimpleArrayMap;-><init>(Landroidx/collection/SimpleArrayMap;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcep;->zzgao:Landroidx/collection/SimpleArrayMap;

    .line 31
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzcer;->zzgal:Lcom/google/android/gms/internal/ads/zzafs;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcep;->zzgal:Lcom/google/android/gms/internal/ads/zzafs;

    .line 32
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzcer;->zzgam:Lcom/google/android/gms/internal/ads/zzajk;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcep;->zzgam:Lcom/google/android/gms/internal/ads/zzajk;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcer;Lcom/google/android/gms/internal/ads/zzces;)V
    .registers 3

    .line 34
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzcep;-><init>(Lcom/google/android/gms/internal/ads/zzcer;)V

    return-void
.end method


# virtual methods
.method public final zzamp()Lcom/google/android/gms/internal/ads/zzaff;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcep;->zzgai:Lcom/google/android/gms/internal/ads/zzaff;

    return-object v0
.end method

.method public final zzamq()Lcom/google/android/gms/internal/ads/zzafe;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcep;->zzgaj:Lcom/google/android/gms/internal/ads/zzafe;

    return-object v0
.end method

.method public final zzamr()Lcom/google/android/gms/internal/ads/zzaft;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcep;->zzgak:Lcom/google/android/gms/internal/ads/zzaft;

    return-object v0
.end method

.method public final zzams()Lcom/google/android/gms/internal/ads/zzafs;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcep;->zzgal:Lcom/google/android/gms/internal/ads/zzafs;

    return-object v0
.end method

.method public final zzamt()Lcom/google/android/gms/internal/ads/zzajk;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcep;->zzgam:Lcom/google/android/gms/internal/ads/zzajk;

    return-object v0
.end method

.method public final zzamu()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcep;->zzgak:Lcom/google/android/gms/internal/ads/zzaft;

    if-eqz v1, :cond_11

    const/4 v1, 0x6

    .line 10
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    :cond_11
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcep;->zzgai:Lcom/google/android/gms/internal/ads/zzaff;

    if-eqz v1, :cond_1d

    const/4 v1, 0x1

    .line 12
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    :cond_1d
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcep;->zzgaj:Lcom/google/android/gms/internal/ads/zzafe;

    if-eqz v1, :cond_29

    const/4 v1, 0x2

    .line 14
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    :cond_29
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcep;->zzgan:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v1}, Landroidx/collection/SimpleArrayMap;->size()I

    move-result v1

    if-lez v1, :cond_39

    const/4 v1, 0x3

    .line 16
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    :cond_39
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcep;->zzgam:Lcom/google/android/gms/internal/ads/zzajk;

    if-eqz v1, :cond_45

    const/4 v1, 0x7

    .line 18
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_45
    return-object v0
.end method

.method public final zzamv()Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcep;->zzgan:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v1}, Landroidx/collection/SimpleArrayMap;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 21
    :goto_c
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcep;->zzgan:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v2}, Landroidx/collection/SimpleArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_22

    .line 22
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcep;->zzgan:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v2, v1}, Landroidx/collection/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_22
    return-object v0
.end method

.method public final zzgd(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzafl;
    .registers 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcep;->zzgan:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v0, p1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzafl;

    return-object p1
.end method

.method public final zzge(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzafk;
    .registers 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcep;->zzgao:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v0, p1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzafk;

    return-object p1
.end method
