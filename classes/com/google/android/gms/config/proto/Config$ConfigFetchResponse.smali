.class public final Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "com.google.firebase:firebase-config@@19.1.4"

# interfaces
.implements Lcom/google/android/gms/config/proto/Config$ConfigFetchResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/config/proto/Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ConfigFetchResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse$Builder;,
        Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse$ResponseStatus;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;",
        "Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse$Builder;",
        ">;",
        "Lcom/google/android/gms/config/proto/Config$ConfigFetchResponseOrBuilder;"
    }
.end annotation


# static fields
.field public static final APP_CONFIG_FIELD_NUMBER:I = 0x4

.field private static final DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;

.field public static final INTERNAL_METADATA_FIELD_NUMBER:I = 0x3

.field public static final PACKAGE_TABLE_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final STATUS_FIELD_NUMBER:I = 0x2


# instance fields
.field private appConfig_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/android/gms/config/proto/Config$AppConfigTable;",
            ">;"
        }
    .end annotation
.end field

.field private bitField0_:I

.field private internalMetadata_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/android/gms/config/proto/Config$KeyValue;",
            ">;"
        }
    .end annotation
.end field

.field private packageTable_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/android/gms/config/proto/Config$PackageTable;",
            ">;"
        }
    .end annotation
.end field

.field private status_:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 14312
    new-instance v0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;

    invoke-direct {v0}, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;-><init>()V

    sput-object v0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;

    .line 14313
    sget-object v0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;

    invoke-virtual {v0}, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 12748
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 12749
    invoke-static {}, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->packageTable_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 12750
    invoke-static {}, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->internalMetadata_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 12751
    invoke-static {}, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->appConfig_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method static synthetic access$18600()Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;
    .registers 1

    .line 12743
    sget-object v0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;

    return-object v0
.end method

.method static synthetic access$18700(Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;ILcom/google/android/gms/config/proto/Config$PackageTable;)V
    .registers 3

    .line 12743
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->setPackageTable(ILcom/google/android/gms/config/proto/Config$PackageTable;)V

    return-void
.end method

.method static synthetic access$18800(Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;ILcom/google/android/gms/config/proto/Config$PackageTable$Builder;)V
    .registers 3

    .line 12743
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->setPackageTable(ILcom/google/android/gms/config/proto/Config$PackageTable$Builder;)V

    return-void
.end method

.method static synthetic access$18900(Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;Lcom/google/android/gms/config/proto/Config$PackageTable;)V
    .registers 2

    .line 12743
    invoke-direct {p0, p1}, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->addPackageTable(Lcom/google/android/gms/config/proto/Config$PackageTable;)V

    return-void
.end method

.method static synthetic access$19000(Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;ILcom/google/android/gms/config/proto/Config$PackageTable;)V
    .registers 3

    .line 12743
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->addPackageTable(ILcom/google/android/gms/config/proto/Config$PackageTable;)V

    return-void
.end method

.method static synthetic access$19100(Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;Lcom/google/android/gms/config/proto/Config$PackageTable$Builder;)V
    .registers 2

    .line 12743
    invoke-direct {p0, p1}, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->addPackageTable(Lcom/google/android/gms/config/proto/Config$PackageTable$Builder;)V

    return-void
.end method

.method static synthetic access$19200(Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;ILcom/google/android/gms/config/proto/Config$PackageTable$Builder;)V
    .registers 3

    .line 12743
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->addPackageTable(ILcom/google/android/gms/config/proto/Config$PackageTable$Builder;)V

    return-void
.end method

.method static synthetic access$19300(Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;Ljava/lang/Iterable;)V
    .registers 2

    .line 12743
    invoke-direct {p0, p1}, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->addAllPackageTable(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$19400(Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;)V
    .registers 1

    .line 12743
    invoke-direct {p0}, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->clearPackageTable()V

    return-void
.end method

.method static synthetic access$19500(Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;I)V
    .registers 2

    .line 12743
    invoke-direct {p0, p1}, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->removePackageTable(I)V

    return-void
.end method

.method static synthetic access$19600(Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse$ResponseStatus;)V
    .registers 2

    .line 12743
    invoke-direct {p0, p1}, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->setStatus(Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse$ResponseStatus;)V

    return-void
.end method

.method static synthetic access$19700(Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;)V
    .registers 1

    .line 12743
    invoke-direct {p0}, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->clearStatus()V

    return-void
.end method

.method static synthetic access$19800(Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;ILcom/google/android/gms/config/proto/Config$KeyValue;)V
    .registers 3

    .line 12743
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->setInternalMetadata(ILcom/google/android/gms/config/proto/Config$KeyValue;)V

    return-void
.end method

.method static synthetic access$19900(Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;ILcom/google/android/gms/config/proto/Config$KeyValue$Builder;)V
    .registers 3

    .line 12743
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->setInternalMetadata(ILcom/google/android/gms/config/proto/Config$KeyValue$Builder;)V

    return-void
.end method

.method static synthetic access$20000(Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;Lcom/google/android/gms/config/proto/Config$KeyValue;)V
    .registers 2

    .line 12743
    invoke-direct {p0, p1}, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->addInternalMetadata(Lcom/google/android/gms/config/proto/Config$KeyValue;)V

    return-void
.end method

.method static synthetic access$20100(Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;ILcom/google/android/gms/config/proto/Config$KeyValue;)V
    .registers 3

    .line 12743
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->addInternalMetadata(ILcom/google/android/gms/config/proto/Config$KeyValue;)V

    return-void
.end method

.method static synthetic access$20200(Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;Lcom/google/android/gms/config/proto/Config$KeyValue$Builder;)V
    .registers 2

    .line 12743
    invoke-direct {p0, p1}, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->addInternalMetadata(Lcom/google/android/gms/config/proto/Config$KeyValue$Builder;)V

    return-void
.end method

.method static synthetic access$20300(Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;ILcom/google/android/gms/config/proto/Config$KeyValue$Builder;)V
    .registers 3

    .line 12743
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->addInternalMetadata(ILcom/google/android/gms/config/proto/Config$KeyValue$Builder;)V

    return-void
.end method

.method static synthetic access$20400(Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;Ljava/lang/Iterable;)V
    .registers 2

    .line 12743
    invoke-direct {p0, p1}, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->addAllInternalMetadata(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$20500(Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;)V
    .registers 1

    .line 12743
    invoke-direct {p0}, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->clearInternalMetadata()V

    return-void
.end method

.method static synthetic access$20600(Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;I)V
    .registers 2

    .line 12743
    invoke-direct {p0, p1}, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->removeInternalMetadata(I)V

    return-void
.end method

.method static synthetic access$20700(Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;ILcom/google/android/gms/config/proto/Config$AppConfigTable;)V
    .registers 3

    .line 12743
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->setAppConfig(ILcom/google/android/gms/config/proto/Config$AppConfigTable;)V

    return-void
.end method

.method static synthetic access$20800(Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;ILcom/google/android/gms/config/proto/Config$AppConfigTable$Builder;)V
    .registers 3

    .line 12743
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->setAppConfig(ILcom/google/android/gms/config/proto/Config$AppConfigTable$Builder;)V

    return-void
.end method

.method static synthetic access$20900(Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;Lcom/google/android/gms/config/proto/Config$AppConfigTable;)V
    .registers 2

    .line 12743
    invoke-direct {p0, p1}, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->addAppConfig(Lcom/google/android/gms/config/proto/Config$AppConfigTable;)V

    return-void
.end method

.method static synthetic access$21000(Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;ILcom/google/android/gms/config/proto/Config$AppConfigTable;)V
    .registers 3

    .line 12743
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->addAppConfig(ILcom/google/android/gms/config/proto/Config$AppConfigTable;)V

    return-void
.end method

.method static synthetic access$21100(Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;Lcom/google/android/gms/config/proto/Config$AppConfigTable$Builder;)V
    .registers 2

    .line 12743
    invoke-direct {p0, p1}, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->addAppConfig(Lcom/google/android/gms/config/proto/Config$AppConfigTable$Builder;)V

    return-void
.end method

.method static synthetic access$21200(Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;ILcom/google/android/gms/config/proto/Config$AppConfigTable$Builder;)V
    .registers 3

    .line 12743
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->addAppConfig(ILcom/google/android/gms/config/proto/Config$AppConfigTable$Builder;)V

    return-void
.end method

.method static synthetic access$21300(Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;Ljava/lang/Iterable;)V
    .registers 2

    .line 12743
    invoke-direct {p0, p1}, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->addAllAppConfig(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$21400(Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;)V
    .registers 1

    .line 12743
    invoke-direct {p0}, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->clearAppConfig()V

    return-void
.end method

.method static synthetic access$21500(Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;I)V
    .registers 2

    .line 12743
    invoke-direct {p0, p1}, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->removeAppConfig(I)V

    return-void
.end method

.method private addAllAppConfig(Ljava/lang/Iterable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/android/gms/config/proto/Config$AppConfigTable;",
            ">;)V"
        }
    .end annotation

    .line 13463
    invoke-direct {p0}, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->ensureAppConfigIsMutable()V

    .line 13464
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->appConfig_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-void
.end method

.method private addAllInternalMetadata(Ljava/lang/Iterable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/android/gms/config/proto/Config$KeyValue;",
            ">;)V"
        }
    .end annotation

    .line 13245
    invoke-direct {p0}, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->ensureInternalMetadataIsMutable()V

    .line 13246
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->internalMetadata_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-void
.end method

.method private addAllPackageTable(Ljava/lang/Iterable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/android/gms/config/proto/Config$PackageTable;",
            ">;)V"
        }
    .end annotation

    .line 12982
    invoke-direct {p0}, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->ensurePackageTableIsMutable()V

    .line 12983
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->packageTable_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-void
.end method

.method private addAppConfig(ILcom/google/android/gms/config/proto/Config$AppConfigTable$Builder;)V
    .registers 4

    .line 13448
    invoke-direct {p0}, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->ensureAppConfigIsMutable()V

    .line 13449
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->appConfig_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Lcom/google/android/gms/config/proto/Config$AppConfigTable$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/config/proto/Config$AppConfigTable;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addAppConfig(ILcom/google/android/gms/config/proto/Config$AppConfigTable;)V
    .registers 4

    if-eqz p2, :cond_b

    .line 13418
    invoke-direct {p0}, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->ensureAppConfigIsMutable()V

    .line 13419
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->appConfig_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void

    .line 13416
    :cond_b
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method private addAppConfig(Lcom/google/android/gms/config/proto/Config$AppConfigTable$Builder;)V
    .registers 3

    .line 13433
    invoke-direct {p0}, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->ensureAppConfigIsMutable()V

    .line 13434
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->appConfig_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Lcom/google/android/gms/config/proto/Config$AppConfigTable$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/config/proto/Config$AppConfigTable;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addAppConfig(Lcom/google/android/gms/config/proto/Config$AppConfigTable;)V
    .registers 3

    if-eqz p1, :cond_b

    .line 13400
    invoke-direct {p0}, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->ensureAppConfigIsMutable()V

    .line 13401
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->appConfig_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void

    .line 13398
    :cond_b
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method private addInternalMetadata(ILcom/google/android/gms/config/proto/Config$KeyValue$Builder;)V
    .registers 4

    .line 13230
    invoke-direct {p0}, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->ensureInternalMetadataIsMutable()V

    .line 13231
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->internalMetadata_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Lcom/google/android/gms/config/proto/Config$KeyValue$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/config/proto/Config$KeyValue;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addInternalMetadata(ILcom/google/android/gms/config/proto/Config$KeyValue;)V
    .registers 4

    if-eqz p2, :cond_b

    .line 13200
    invoke-direct {p0}, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->ensureInternalMetadataIsMutable()V

    .line 13201
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->internalMetadata_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void

    .line 13198
    :cond_b
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method private addInternalMetadata(Lcom/google/android/gms/config/proto/Config$KeyValue$Builder;)V
    .registers 3

    .line 13215
    invoke-direct {p0}, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->ensureInternalMetadataIsMutable()V

    .line 13216
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->internalMetadata_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Lcom/google/android/gms/config/proto/Config$KeyValue$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/config/proto/Config$KeyValue;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addInternalMetadata(Lcom/google/android/gms/config/proto/Config$KeyValue;)V
    .registers 3

    if-eqz p1, :cond_b

    .line 13182
    invoke-direct {p0}, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->ensureInternalMetadataIsMutable()V

    .line 13183
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->internalMetadata_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void

    .line 13180
    :cond_b
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method private addPackageTable(ILcom/google/android/gms/config/proto/Config$PackageTable$Builder;)V
    .registers 4

    .line 12969
    invoke-direct {p0}, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->ensurePackageTableIsMutable()V

    .line 12970
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->packageTable_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Lcom/google/android/gms/config/proto/Config$PackageTable$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/config/proto/Config$PackageTable;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addPackageTable(ILcom/google/android/gms/config/proto/Config$PackageTable;)V
    .registers 4

    if-eqz p2, :cond_b

    .line 12943
    invoke-direct {p0}, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->ensurePackageTableIsMutable()V

    .line 12944
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->packageTable_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void

    .line 12941
    :cond_b
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method private addPackageTable(Lcom/google/android/gms/config/proto/Config$PackageTable$Builder;)V
    .registers 3

    .line 12956
    invoke-direct {p0}, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->ensurePackageTableIsMutable()V

    .line 12957
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->packageTable_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Lcom/google/android/gms/config/proto/Config$PackageTable$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/config/proto/Config$PackageTable;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addPackageTable(Lcom/google/android/gms/config/proto/Config$PackageTable;)V
    .registers 3

    if-eqz p1, :cond_b

    .line 12927
    invoke-direct {p0}, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->ensurePackageTableIsMutable()V

    .line 12928
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->packageTable_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void

    .line 12925
    :cond_b
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method private clearAppConfig()V
    .registers 2

    .line 13478
    invoke-static {}, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->appConfig_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearInternalMetadata()V
    .registers 2

    .line 13260
    invoke-static {}, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->internalMetadata_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearPackageTable()V
    .registers 2

    .line 12995
    invoke-static {}, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->packageTable_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearStatus()V
    .registers 2

    .line 13055
    iget v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->bitField0_:I

    const/4 v0, 0x0

    .line 13056
    iput v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->status_:I

    return-void
.end method

.method private ensureAppConfigIsMutable()V
    .registers 2

    .line 13347
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->appConfig_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_10

    .line 13348
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->appConfig_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 13349
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->appConfig_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_10
    return-void
.end method

.method private ensureInternalMetadataIsMutable()V
    .registers 2

    .line 13129
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->internalMetadata_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_10

    .line 13130
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->internalMetadata_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 13131
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->internalMetadata_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_10
    return-void
.end method

.method private ensurePackageTableIsMutable()V
    .registers 2

    .line 12880
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->packageTable_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_10

    .line 12881
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->packageTable_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 12882
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->packageTable_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_10
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;
    .registers 1

    .line 14317
    sget-object v0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse$Builder;
    .registers 1

    .line 13600
    sget-object v0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;

    invoke-virtual {v0}, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;)Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse$Builder;
    .registers 2

    .line 13603
    sget-object v0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;

    invoke-virtual {v0}, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse$Builder;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13577
    sget-object v0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;

    invoke-static {v0, p0}, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13583
    sget-object v0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 13541
    sget-object v0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 13548
    sget-object v0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13588
    sget-object v0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13595
    sget-object v0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13565
    sget-object v0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13572
    sget-object v0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 13553
    sget-object v0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 13560
    sget-object v0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;",
            ">;"
        }
    .end annotation

    .line 14323
    sget-object v0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;

    invoke-virtual {v0}, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeAppConfig(I)V
    .registers 3

    .line 13491
    invoke-direct {p0}, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->ensureAppConfigIsMutable()V

    .line 13492
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->appConfig_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private removeInternalMetadata(I)V
    .registers 3

    .line 13273
    invoke-direct {p0}, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->ensureInternalMetadataIsMutable()V

    .line 13274
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->internalMetadata_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private removePackageTable(I)V
    .registers 3

    .line 13006
    invoke-direct {p0}, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->ensurePackageTableIsMutable()V

    .line 13007
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->packageTable_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setAppConfig(ILcom/google/android/gms/config/proto/Config$AppConfigTable$Builder;)V
    .registers 4

    .line 13383
    invoke-direct {p0}, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->ensureAppConfigIsMutable()V

    .line 13384
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->appConfig_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Lcom/google/android/gms/config/proto/Config$AppConfigTable$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/config/proto/Config$AppConfigTable;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setAppConfig(ILcom/google/android/gms/config/proto/Config$AppConfigTable;)V
    .registers 4

    if-eqz p2, :cond_b

    .line 13368
    invoke-direct {p0}, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->ensureAppConfigIsMutable()V

    .line 13369
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->appConfig_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 13366
    :cond_b
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method private setInternalMetadata(ILcom/google/android/gms/config/proto/Config$KeyValue$Builder;)V
    .registers 4

    .line 13165
    invoke-direct {p0}, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->ensureInternalMetadataIsMutable()V

    .line 13166
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->internalMetadata_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Lcom/google/android/gms/config/proto/Config$KeyValue$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/config/proto/Config$KeyValue;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setInternalMetadata(ILcom/google/android/gms/config/proto/Config$KeyValue;)V
    .registers 4

    if-eqz p2, :cond_b

    .line 13150
    invoke-direct {p0}, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->ensureInternalMetadataIsMutable()V

    .line 13151
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->internalMetadata_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 13148
    :cond_b
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method private setPackageTable(ILcom/google/android/gms/config/proto/Config$PackageTable$Builder;)V
    .registers 4

    .line 12912
    invoke-direct {p0}, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->ensurePackageTableIsMutable()V

    .line 12913
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->packageTable_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Lcom/google/android/gms/config/proto/Config$PackageTable$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/config/proto/Config$PackageTable;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setPackageTable(ILcom/google/android/gms/config/proto/Config$PackageTable;)V
    .registers 4

    if-eqz p2, :cond_b

    .line 12899
    invoke-direct {p0}, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->ensurePackageTableIsMutable()V

    .line 12900
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->packageTable_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 12897
    :cond_b
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method private setStatus(Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse$ResponseStatus;)V
    .registers 3

    if-eqz p1, :cond_f

    .line 13044
    iget v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->bitField0_:I

    .line 13045
    invoke-virtual {p1}, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse$ResponseStatus;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->status_:I

    return-void

    .line 13042
    :cond_f
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    .line 14194
    sget-object v0, Lcom/google/android/gms/config/proto/Config$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_154

    .line 14305
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 14296
    :pswitch_12
    sget-object p1, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_2b

    const-class p1, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;

    monitor-enter p1

    .line 14297
    :try_start_19
    sget-object p2, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p2, :cond_26

    .line 14298
    new-instance p2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;

    invoke-direct {p2, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p2, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->PARSER:Lcom/google/protobuf/Parser;

    .line 14300
    :cond_26
    monitor-exit p1

    goto :goto_2b

    :catchall_28
    move-exception p2

    monitor-exit p1
    :try_end_2a
    .catchall {:try_start_19 .. :try_end_2a} :catchall_28

    throw p2

    .line 14302
    :cond_2b
    :goto_2b
    sget-object p1, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->PARSER:Lcom/google/protobuf/Parser;

    return-object p1

    .line 14225
    :pswitch_2e
    check-cast p2, Lcom/google/protobuf/CodedInputStream;

    .line 14227
    check-cast p3, Lcom/google/protobuf/ExtensionRegistryLite;

    const/4 p1, 0x0

    :cond_33
    :goto_33
    if-nez p1, :cond_f1

    .line 14232
    :try_start_35
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_cc

    const/16 v2, 0xa

    if-eq v0, v2, :cond_ab

    const/16 v2, 0x10

    if-eq v0, v2, :cond_94

    const/16 v2, 0x1a

    if-eq v0, v2, :cond_74

    const/16 v2, 0x22

    if-eq v0, v2, :cond_54

    .line 14238
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->parseUnknownField(ILcom/google/protobuf/CodedInputStream;)Z

    move-result v0

    if-nez v0, :cond_33

    goto/16 :goto_cc

    .line 14273
    :cond_54
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->appConfig_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_64

    .line 14274
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->appConfig_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 14275
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->appConfig_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 14277
    :cond_64
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->appConfig_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 14278
    invoke-static {}, Lcom/google/android/gms/config/proto/Config$AppConfigTable;->parser()Lcom/google/protobuf/Parser;

    move-result-object v1

    invoke-virtual {p2, v1, p3}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/config/proto/Config$AppConfigTable;

    .line 14277
    invoke-interface {v0, v1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    goto :goto_33

    .line 14264
    :cond_74
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->internalMetadata_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_84

    .line 14265
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->internalMetadata_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 14266
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->internalMetadata_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 14268
    :cond_84
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->internalMetadata_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 14269
    invoke-static {}, Lcom/google/android/gms/config/proto/Config$KeyValue;->parser()Lcom/google/protobuf/Parser;

    move-result-object v1

    invoke-virtual {p2, v1, p3}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/config/proto/Config$KeyValue;

    .line 14268
    invoke-interface {v0, v1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    goto :goto_33

    .line 14253
    :cond_94
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 14254
    invoke-static {v0}, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse$ResponseStatus;->forNumber(I)Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse$ResponseStatus;

    move-result-object v2

    if-nez v2, :cond_a3

    const/4 v1, 0x2

    .line 14256
    invoke-super {p0, v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->mergeVarintField(II)V

    goto :goto_33

    .line 14258
    :cond_a3
    iget v2, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->bitField0_:I

    or-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->bitField0_:I

    .line 14259
    iput v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->status_:I

    goto :goto_33

    .line 14244
    :cond_ab
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->packageTable_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_bb

    .line 14245
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->packageTable_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 14246
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->packageTable_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 14248
    :cond_bb
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->packageTable_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 14249
    invoke-static {}, Lcom/google/android/gms/config/proto/Config$PackageTable;->parser()Lcom/google/protobuf/Parser;

    move-result-object v1

    invoke-virtual {p2, v1, p3}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/config/proto/Config$PackageTable;

    .line 14248
    invoke-interface {v0, v1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z
    :try_end_ca
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_35 .. :try_end_ca} :catch_e5
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_ca} :catch_d1
    .catchall {:try_start_35 .. :try_end_ca} :catchall_cf

    goto/16 :goto_33

    :cond_cc
    :goto_cc
    const/4 p1, 0x1

    goto/16 :goto_33

    :catchall_cf
    move-exception p1

    goto :goto_f0

    :catch_d1
    move-exception p1

    .line 14286
    :try_start_d2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 14288
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_e5
    move-exception p1

    .line 14284
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_f0
    .catchall {:try_start_d2 .. :try_end_f0} :catchall_cf

    .line 14289
    :goto_f0
    throw p1

    .line 14293
    :cond_f1
    :pswitch_f1
    sget-object p1, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;

    return-object p1

    .line 14211
    :pswitch_f4
    check-cast p2, Lcom/google/protobuf/GeneratedMessageLite$Visitor;

    .line 14212
    check-cast p3, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;

    .line 14213
    iget-object p1, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->packageTable_:Lcom/google/protobuf/Internal$ProtobufList;

    iget-object v0, p3, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->packageTable_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p2, p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitList(Lcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->packageTable_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 14214
    invoke-virtual {p0}, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->hasStatus()Z

    move-result p1

    iget v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->status_:I

    .line 14215
    invoke-virtual {p3}, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->hasStatus()Z

    move-result v1

    iget v2, p3, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->status_:I

    .line 14214
    invoke-interface {p2, p1, v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->status_:I

    .line 14216
    iget-object p1, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->internalMetadata_:Lcom/google/protobuf/Internal$ProtobufList;

    iget-object v0, p3, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->internalMetadata_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p2, p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitList(Lcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->internalMetadata_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 14217
    iget-object p1, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->appConfig_:Lcom/google/protobuf/Internal$ProtobufList;

    iget-object v0, p3, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->appConfig_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p2, p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitList(Lcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->appConfig_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 14218
    sget-object p1, Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;

    if-ne p2, p1, :cond_133

    .line 14220
    iget p1, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->bitField0_:I

    iget p2, p3, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->bitField0_:I

    or-int/2addr p1, p2

    iput p1, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->bitField0_:I

    :cond_133
    return-object p0

    .line 14208
    :pswitch_134
    new-instance p1, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse$Builder;

    invoke-direct {p1, v0}, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse$Builder;-><init>(Lcom/google/android/gms/config/proto/Config$1;)V

    return-object p1

    .line 14202
    :pswitch_13a
    iget-object p1, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->packageTable_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p1}, Lcom/google/protobuf/Internal$ProtobufList;->makeImmutable()V

    .line 14203
    iget-object p1, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->internalMetadata_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p1}, Lcom/google/protobuf/Internal$ProtobufList;->makeImmutable()V

    .line 14204
    iget-object p1, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->appConfig_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p1}, Lcom/google/protobuf/Internal$ProtobufList;->makeImmutable()V

    return-object v0

    .line 14199
    :pswitch_14a
    sget-object p1, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;

    return-object p1

    .line 14196
    :pswitch_14d
    new-instance p1, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;

    invoke-direct {p1}, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;-><init>()V

    return-object p1

    nop

    :pswitch_data_154
    .packed-switch 0x1
        :pswitch_14d
        :pswitch_14a
        :pswitch_13a
        :pswitch_134
        :pswitch_f4
        :pswitch_2e
        :pswitch_f1
        :pswitch_12
    .end packed-switch
.end method

.method public getAppConfig(I)Lcom/google/android/gms/config/proto/Config$AppConfigTable;
    .registers 3

    .line 13330
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->appConfig_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/config/proto/Config$AppConfigTable;

    return-object p1
.end method

.method public getAppConfigCount()I
    .registers 2

    .line 13317
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->appConfig_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getAppConfigList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/config/proto/Config$AppConfigTable;",
            ">;"
        }
    .end annotation

    .line 13290
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->appConfig_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getAppConfigOrBuilder(I)Lcom/google/android/gms/config/proto/Config$AppConfigTableOrBuilder;
    .registers 3

    .line 13344
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->appConfig_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/config/proto/Config$AppConfigTableOrBuilder;

    return-object p1
.end method

.method public getAppConfigOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/gms/config/proto/Config$AppConfigTableOrBuilder;",
            ">;"
        }
    .end annotation

    .line 13304
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->appConfig_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getInternalMetadata(I)Lcom/google/android/gms/config/proto/Config$KeyValue;
    .registers 3

    .line 13112
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->internalMetadata_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/config/proto/Config$KeyValue;

    return-object p1
.end method

.method public getInternalMetadataCount()I
    .registers 2

    .line 13099
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->internalMetadata_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getInternalMetadataList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/config/proto/Config$KeyValue;",
            ">;"
        }
    .end annotation

    .line 13072
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->internalMetadata_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getInternalMetadataOrBuilder(I)Lcom/google/android/gms/config/proto/Config$KeyValueOrBuilder;
    .registers 3

    .line 13126
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->internalMetadata_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/config/proto/Config$KeyValueOrBuilder;

    return-object p1
.end method

.method public getInternalMetadataOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/gms/config/proto/Config$KeyValueOrBuilder;",
            ">;"
        }
    .end annotation

    .line 13086
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->internalMetadata_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getPackageTable(I)Lcom/google/android/gms/config/proto/Config$PackageTable;
    .registers 3

    .line 12865
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->packageTable_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/config/proto/Config$PackageTable;

    return-object p1
.end method

.method public getPackageTableCount()I
    .registers 2

    .line 12854
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->packageTable_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getPackageTableList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/config/proto/Config$PackageTable;",
            ">;"
        }
    .end annotation

    .line 12831
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->packageTable_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getPackageTableOrBuilder(I)Lcom/google/android/gms/config/proto/Config$PackageTableOrBuilder;
    .registers 3

    .line 12877
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->packageTable_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/config/proto/Config$PackageTableOrBuilder;

    return-object p1
.end method

.method public getPackageTableOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/gms/config/proto/Config$PackageTableOrBuilder;",
            ">;"
        }
    .end annotation

    .line 12843
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->packageTable_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .line 13513
    iget v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    :cond_6
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 13517
    :goto_9
    iget-object v3, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->packageTable_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v3}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v1, v3, :cond_22

    .line 13518
    iget-object v3, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->packageTable_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 13519
    invoke-interface {v3, v1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 13521
    :cond_22
    iget v1, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->bitField0_:I

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_2f

    const/4 v1, 0x2

    .line 13522
    iget v3, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->status_:I

    .line 13523
    invoke-static {v1, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v2, v1

    :cond_2f
    const/4 v1, 0x0

    .line 13525
    :goto_30
    iget-object v3, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->internalMetadata_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v3}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v3

    if-ge v1, v3, :cond_49

    const/4 v3, 0x3

    .line 13526
    iget-object v4, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->internalMetadata_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 13527
    invoke-interface {v4, v1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/MessageLite;

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_30

    .line 13529
    :cond_49
    :goto_49
    iget-object v1, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->appConfig_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v1}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v1

    if-ge v0, v1, :cond_62

    const/4 v1, 0x4

    .line 13530
    iget-object v3, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->appConfig_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 13531
    invoke-interface {v3, v0}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v1, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_49

    .line 13533
    :cond_62
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSetLite;->getSerializedSize()I

    move-result v0

    add-int/2addr v2, v0

    .line 13534
    iput v2, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->memoizedSerializedSize:I

    return v2
.end method

.method public getStatus()Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse$ResponseStatus;
    .registers 2

    .line 13030
    iget v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->status_:I

    invoke-static {v0}, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse$ResponseStatus;->forNumber(I)Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse$ResponseStatus;

    move-result-object v0

    if-nez v0, :cond_a

    .line 13031
    sget-object v0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse$ResponseStatus;->SUCCESS:Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse$ResponseStatus;

    :cond_a
    return-object v0
.end method

.method public hasStatus()Z
    .registers 3

    .line 13020
    iget v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 13497
    :goto_2
    iget-object v2, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->packageTable_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v2}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_19

    .line 13498
    iget-object v2, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->packageTable_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v2, v1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 13500
    :cond_19
    iget v1, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->bitField0_:I

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_24

    const/4 v1, 0x2

    .line 13501
    iget v2, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->status_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    :cond_24
    const/4 v1, 0x0

    .line 13503
    :goto_25
    iget-object v2, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->internalMetadata_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v2}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3c

    const/4 v2, 0x3

    .line 13504
    iget-object v3, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->internalMetadata_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v3, v1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    .line 13506
    :cond_3c
    :goto_3c
    iget-object v1, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->appConfig_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v1}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v1

    if-ge v0, v1, :cond_53

    const/4 v1, 0x4

    .line 13507
    iget-object v2, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->appConfig_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v2, v0}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3c

    .line 13509
    :cond_53
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSetLite;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
