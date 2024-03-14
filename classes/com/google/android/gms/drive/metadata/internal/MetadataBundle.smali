.class public final Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;

# interfaces
.implements Lcom/google/android/gms/common/internal/ReflectedParcelable;


# annotations
.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Class;
    creator = "MetadataBundleCreator"
.end annotation

.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Reserved;
    value = {
        0x1
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzbz:Lcom/google/android/gms/common/internal/GmsLogger;


# instance fields
.field private final zzjh:Landroid/os/Bundle;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        id = 0x2
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 60
    new-instance v0, Lcom/google/android/gms/common/internal/GmsLogger;

    const-string v1, "MetadataBundle"

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/internal/GmsLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->zzbz:Lcom/google/android/gms/common/internal/GmsLogger;

    .line 61
    new-instance v0, Lcom/google/android/gms/drive/metadata/internal/zzj;

    invoke-direct {v0}, Lcom/google/android/gms/drive/metadata/internal/zzj;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Bundle;)V
    .registers 7
    .param p1    # Landroid/os/Bundle;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x2
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Constructor;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    iput-object p1, p0, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->zzjh:Landroid/os/Bundle;

    .line 3
    iget-object p1, p0, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->zzjh:Landroid/os/Bundle;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->zzjh:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_27
    :goto_27
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 6
    invoke-static {v1}, Lcom/google/android/gms/drive/metadata/internal/zzf;->zzf(Ljava/lang/String;)Lcom/google/android/gms/drive/metadata/MetadataField;

    move-result-object v3

    if-nez v3, :cond_27

    .line 7
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    sget-object v3, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->zzbz:Lcom/google/android/gms/common/internal/GmsLogger;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v2

    const-string v1, "MetadataBundle"

    const-string v2, "Ignored unknown metadata field in bundle: %s"

    invoke-virtual {v3, v1, v2, v4}, Lcom/google/android/gms/common/internal/GmsLogger;->wfmt(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_27

    .line 10
    :cond_4c
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_52
    if-ge v2, v0, :cond_62

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    check-cast v1, Ljava/lang/String;

    .line 11
    iget-object v3, p0, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->zzjh:Landroid/os/Bundle;

    invoke-virtual {v3, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_52

    :cond_62
    return-void
.end method

.method public static zza(Lcom/google/android/gms/drive/metadata/MetadataField;Ljava/lang/Object;)Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/drive/metadata/MetadataField<",
            "TT;>;TT;)",
            "Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;"
        }
    .end annotation

    .line 15
    invoke-static {}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->zzbe()Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    move-result-object v0

    .line 16
    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->zzb(Lcom/google/android/gms/drive/metadata/MetadataField;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static zzbe()Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;
    .registers 2

    .line 14
    new-instance v0, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_4b

    .line 44
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_4b

    .line 46
    :cond_12
    check-cast p1, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    .line 47
    iget-object v2, p0, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->zzjh:Landroid/os/Bundle;

    invoke-virtual {v2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 48
    iget-object v3, p1, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->zzjh:Landroid/os/Bundle;

    invoke-virtual {v3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27

    return v1

    .line 50
    :cond_27
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 51
    iget-object v4, p0, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->zzjh:Landroid/os/Bundle;

    invoke-virtual {v4, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p1, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->zzjh:Landroid/os/Bundle;

    invoke-virtual {v5, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2b

    return v1

    :cond_4a
    return v0

    :cond_4b
    :goto_4b
    return v1
.end method

.method public final hashCode()I
    .registers 5

    .line 38
    iget-object v0, p0, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->zzjh:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    mul-int/lit8 v1, v1, 0x1f

    .line 39
    iget-object v3, p0, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->zzjh:Landroid/os/Bundle;

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_b

    :cond_25
    return v1
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    .line 56
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result p2

    .line 57
    iget-object v0, p0, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->zzjh:Landroid/os/Bundle;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBundle(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V

    .line 58
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;
    .registers 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/drive/metadata/MetadataField<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->zzjh:Landroid/os/Bundle;

    invoke-interface {p1, v0}, Lcom/google/android/gms/drive/metadata/MetadataField;->zza(Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Landroid/content/Context;)V
    .registers 3

    .line 33
    sget-object v0, Lcom/google/android/gms/internal/drive/zzhs;->zzkq:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->zza(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/data/BitmapTeleporter;

    if-eqz v0, :cond_11

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/data/BitmapTeleporter;->setTempDir(Ljava/io/File;)V

    :cond_11
    return-void
.end method

.method public final zzb(Lcom/google/android/gms/drive/metadata/MetadataField;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/drive/metadata/MetadataField<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 19
    invoke-interface {p1}, Lcom/google/android/gms/drive/metadata/MetadataField;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zzf;->zzf(Ljava/lang/String;)Lcom/google/android/gms/drive/metadata/MetadataField;

    move-result-object v0

    if-nez v0, :cond_2a

    .line 20
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unregistered field: "

    invoke-interface {p1}, Lcom/google/android/gms/drive/metadata/MetadataField;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_21

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_26

    :cond_21
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_26
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 21
    :cond_2a
    iget-object v0, p0, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->zzjh:Landroid/os/Bundle;

    invoke-interface {p1, p2, v0}, Lcom/google/android/gms/drive/metadata/MetadataField;->zza(Ljava/lang/Object;Landroid/os/Bundle;)V

    return-void
.end method

.method public final zzbf()Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;
    .registers 4

    .line 18
    new-instance v0, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    new-instance v1, Landroid/os/Bundle;

    iget-object v2, p0, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->zzjh:Landroid/os/Bundle;

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-direct {v0, v1}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public final zzbg()Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/drive/metadata/MetadataField<",
            "*>;>;"
        }
    .end annotation

    .line 28
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 29
    iget-object v1, p0, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->zzjh:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 30
    invoke-static {v2}, Lcom/google/android/gms/drive/metadata/internal/zzf;->zzf(Ljava/lang/String;)Lcom/google/android/gms/drive/metadata/MetadataField;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_23
    return-object v0
.end method

.method public final zzc(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;
    .registers 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/drive/metadata/MetadataField<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 24
    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->zza(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    move-result-object v0

    .line 25
    iget-object v1, p0, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->zzjh:Landroid/os/Bundle;

    invoke-interface {p1}, Lcom/google/android/gms/drive/metadata/MetadataField;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    return-object v0
.end method

.method public final zzd(Lcom/google/android/gms/drive/metadata/MetadataField;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/drive/metadata/MetadataField<",
            "*>;)Z"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->zzjh:Landroid/os/Bundle;

    invoke-interface {p1}, Lcom/google/android/gms/drive/metadata/MetadataField;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
