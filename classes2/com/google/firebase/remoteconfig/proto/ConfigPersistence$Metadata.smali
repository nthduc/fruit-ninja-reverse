.class public final Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "com.google.firebase:firebase-config@@19.1.4"

# interfaces
.implements Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$MetadataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/remoteconfig/proto/ConfigPersistence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Metadata"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;",
        "Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata$Builder;",
        ">;",
        "Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$MetadataOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;

.field public static final DEVELOPER_MODE_ENABLED_FIELD_NUMBER:I = 0x2

.field public static final LAST_FETCH_STATUS_FIELD_NUMBER:I = 0x1

.field public static final LAST_KNOWN_EXPERIMENT_START_TIME_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bitField0_:I

.field private developerModeEnabled_:Z

.field private lastFetchStatus_:I

.field private lastKnownExperimentStartTime_:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 3099
    new-instance v0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;

    invoke-direct {v0}, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;-><init>()V

    sput-object v0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;->DEFAULT_INSTANCE:Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;

    .line 3100
    sget-object v0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;->DEFAULT_INSTANCE:Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;

    invoke-virtual {v0}, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 2703
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method static synthetic access$6500()Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;
    .registers 1

    .line 2698
    sget-object v0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;->DEFAULT_INSTANCE:Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;

    return-object v0
.end method

.method static synthetic access$6600(Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;I)V
    .registers 2

    .line 2698
    invoke-direct {p0, p1}, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;->setLastFetchStatus(I)V

    return-void
.end method

.method static synthetic access$6700(Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;)V
    .registers 1

    .line 2698
    invoke-direct {p0}, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;->clearLastFetchStatus()V

    return-void
.end method

.method static synthetic access$6800(Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;Z)V
    .registers 2

    .line 2698
    invoke-direct {p0, p1}, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;->setDeveloperModeEnabled(Z)V

    return-void
.end method

.method static synthetic access$6900(Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;)V
    .registers 1

    .line 2698
    invoke-direct {p0}, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;->clearDeveloperModeEnabled()V

    return-void
.end method

.method static synthetic access$7000(Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;J)V
    .registers 3

    .line 2698
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;->setLastKnownExperimentStartTime(J)V

    return-void
.end method

.method static synthetic access$7100(Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;)V
    .registers 1

    .line 2698
    invoke-direct {p0}, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;->clearLastKnownExperimentStartTime()V

    return-void
.end method

.method private clearDeveloperModeEnabled()V
    .registers 2

    .line 2760
    iget v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;->bitField0_:I

    const/4 v0, 0x0

    .line 2761
    iput-boolean v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;->developerModeEnabled_:Z

    return-void
.end method

.method private clearLastFetchStatus()V
    .registers 2

    .line 2731
    iget v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;->bitField0_:I

    const/4 v0, 0x0

    .line 2732
    iput v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;->lastFetchStatus_:I

    return-void
.end method

.method private clearLastKnownExperimentStartTime()V
    .registers 3

    .line 2789
    iget v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;->bitField0_:I

    const-wide/16 v0, 0x0

    .line 2790
    iput-wide v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;->lastKnownExperimentStartTime_:J

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;
    .registers 1

    .line 3104
    sget-object v0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;->DEFAULT_INSTANCE:Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata$Builder;
    .registers 1

    .line 2891
    sget-object v0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;->DEFAULT_INSTANCE:Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;

    invoke-virtual {v0}, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;)Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata$Builder;
    .registers 2

    .line 2894
    sget-object v0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;->DEFAULT_INSTANCE:Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;

    invoke-virtual {v0}, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata$Builder;

    invoke-virtual {v0, p0}, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2868
    sget-object v0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;->DEFAULT_INSTANCE:Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;

    invoke-static {v0, p0}, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2874
    sget-object v0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;->DEFAULT_INSTANCE:Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;

    invoke-static {v0, p0, p1}, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2832
    sget-object v0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;->DEFAULT_INSTANCE:Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2839
    sget-object v0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;->DEFAULT_INSTANCE:Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2879
    sget-object v0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;->DEFAULT_INSTANCE:Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2886
    sget-object v0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;->DEFAULT_INSTANCE:Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2856
    sget-object v0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;->DEFAULT_INSTANCE:Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2863
    sget-object v0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;->DEFAULT_INSTANCE:Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2844
    sget-object v0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;->DEFAULT_INSTANCE:Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2851
    sget-object v0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;->DEFAULT_INSTANCE:Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;",
            ">;"
        }
    .end annotation

    .line 3110
    sget-object v0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;->DEFAULT_INSTANCE:Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;

    invoke-virtual {v0}, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setDeveloperModeEnabled(Z)V
    .registers 3

    .line 2753
    iget v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;->bitField0_:I

    .line 2754
    iput-boolean p1, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;->developerModeEnabled_:Z

    return-void
.end method

.method private setLastFetchStatus(I)V
    .registers 3

    .line 2724
    iget v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;->bitField0_:I

    .line 2725
    iput p1, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;->lastFetchStatus_:I

    return-void
.end method

.method private setLastKnownExperimentStartTime(J)V
    .registers 4

    .line 2782
    iget v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;->bitField0_:I

    .line 2783
    iput-wide p1, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;->lastKnownExperimentStartTime_:J

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11

    .line 3003
    sget-object v0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_f4

    .line 3092
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 3083
    :pswitch_12
    sget-object p1, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_2b

    const-class p1, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;

    monitor-enter p1

    .line 3084
    :try_start_19
    sget-object p2, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p2, :cond_26

    .line 3085
    new-instance p2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;->DEFAULT_INSTANCE:Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;

    invoke-direct {p2, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p2, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;->PARSER:Lcom/google/protobuf/Parser;

    .line 3087
    :cond_26
    monitor-exit p1

    goto :goto_2b

    :catchall_28
    move-exception p2

    monitor-exit p1
    :try_end_2a
    .catchall {:try_start_19 .. :try_end_2a} :catchall_28

    throw p2

    .line 3089
    :cond_2b
    :goto_2b
    sget-object p1, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;->PARSER:Lcom/google/protobuf/Parser;

    return-object p1

    .line 3035
    :pswitch_2e
    check-cast p2, Lcom/google/protobuf/CodedInputStream;

    .line 3037
    check-cast p3, Lcom/google/protobuf/ExtensionRegistryLite;

    const/4 p1, 0x0

    :cond_33
    :goto_33
    if-nez p1, :cond_99

    .line 3042
    :try_start_35
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result p3

    const/4 v0, 0x1

    if-eqz p3, :cond_75

    const/16 v1, 0x8

    if-eq p3, v1, :cond_69

    const/16 v1, 0x10

    if-eq p3, v1, :cond_5c

    const/16 v1, 0x19

    if-eq p3, v1, :cond_4f

    .line 3048
    invoke-virtual {p0, p3, p2}, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;->parseUnknownField(ILcom/google/protobuf/CodedInputStream;)Z

    move-result p3

    if-nez p3, :cond_33

    goto :goto_75

    .line 3064
    :cond_4f
    iget p3, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;->bitField0_:I

    or-int/lit8 p3, p3, 0x4

    iput p3, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;->bitField0_:I

    .line 3065
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readFixed64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;->lastKnownExperimentStartTime_:J

    goto :goto_33

    .line 3059
    :cond_5c
    iget p3, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;->bitField0_:I

    or-int/lit8 p3, p3, 0x2

    iput p3, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;->bitField0_:I

    .line 3060
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result p3

    iput-boolean p3, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;->developerModeEnabled_:Z

    goto :goto_33

    .line 3054
    :cond_69
    iget p3, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;->bitField0_:I

    or-int/2addr p3, v0

    iput p3, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;->bitField0_:I

    .line 3055
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result p3

    iput p3, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;->lastFetchStatus_:I
    :try_end_74
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_35 .. :try_end_74} :catch_8d
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_74} :catch_79
    .catchall {:try_start_35 .. :try_end_74} :catchall_77

    goto :goto_33

    :cond_75
    :goto_75
    const/4 p1, 0x1

    goto :goto_33

    :catchall_77
    move-exception p1

    goto :goto_98

    :catch_79
    move-exception p1

    .line 3073
    :try_start_7a
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 3075
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_8d
    move-exception p1

    .line 3071
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_98
    .catchall {:try_start_7a .. :try_end_98} :catchall_77

    .line 3076
    :goto_98
    throw p1

    .line 3080
    :cond_99
    :pswitch_99
    sget-object p1, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;->DEFAULT_INSTANCE:Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;

    return-object p1

    .line 3017
    :pswitch_9c
    move-object p1, p2

    check-cast p1, Lcom/google/protobuf/GeneratedMessageLite$Visitor;

    .line 3018
    check-cast p3, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;

    .line 3020
    invoke-virtual {p0}, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;->hasLastFetchStatus()Z

    move-result p2

    iget v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;->lastFetchStatus_:I

    .line 3021
    invoke-virtual {p3}, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;->hasLastFetchStatus()Z

    move-result v1

    iget v2, p3, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;->lastFetchStatus_:I

    .line 3019
    invoke-interface {p1, p2, v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p2

    iput p2, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;->lastFetchStatus_:I

    .line 3023
    invoke-virtual {p0}, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;->hasDeveloperModeEnabled()Z

    move-result p2

    iget-boolean v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;->developerModeEnabled_:Z

    .line 3024
    invoke-virtual {p3}, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;->hasDeveloperModeEnabled()Z

    move-result v1

    iget-boolean v2, p3, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;->developerModeEnabled_:Z

    .line 3022
    invoke-interface {p1, p2, v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitBoolean(ZZZZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;->developerModeEnabled_:Z

    .line 3026
    invoke-virtual {p0}, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;->hasLastKnownExperimentStartTime()Z

    move-result v1

    iget-wide v2, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;->lastKnownExperimentStartTime_:J

    .line 3027
    invoke-virtual {p3}, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;->hasLastKnownExperimentStartTime()Z

    move-result v4

    iget-wide v5, p3, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;->lastKnownExperimentStartTime_:J

    move-object v0, p1

    .line 3025
    invoke-interface/range {v0 .. v6}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitLong(ZJZJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;->lastKnownExperimentStartTime_:J

    .line 3028
    sget-object p2, Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;

    if-ne p1, p2, :cond_e3

    .line 3030
    iget p1, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;->bitField0_:I

    iget p2, p3, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;->bitField0_:I

    or-int/2addr p1, p2

    iput p1, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;->bitField0_:I

    :cond_e3
    return-object p0

    .line 3014
    :pswitch_e4
    new-instance p1, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata$Builder;

    invoke-direct {p1, v0}, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata$Builder;-><init>(Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$1;)V

    return-object p1

    :pswitch_ea
    return-object v0

    .line 3008
    :pswitch_eb
    sget-object p1, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;->DEFAULT_INSTANCE:Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;

    return-object p1

    .line 3005
    :pswitch_ee
    new-instance p1, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;

    invoke-direct {p1}, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;-><init>()V

    return-object p1

    :pswitch_data_f4
    .packed-switch 0x1
        :pswitch_ee
        :pswitch_eb
        :pswitch_ea
        :pswitch_e4
        :pswitch_9c
        :pswitch_2e
        :pswitch_99
        :pswitch_12
    .end packed-switch
.end method

.method public getDeveloperModeEnabled()Z
    .registers 2

    .line 2747
    iget-boolean v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;->developerModeEnabled_:Z

    return v0
.end method

.method public getLastFetchStatus()I
    .registers 2

    .line 2718
    iget v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;->lastFetchStatus_:I

    return v0
.end method

.method public getLastKnownExperimentStartTime()J
    .registers 3

    .line 2776
    iget-wide v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;->lastKnownExperimentStartTime_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .registers 5

    .line 2808
    iget v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    :cond_6
    const/4 v0, 0x0

    .line 2812
    iget v1, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_14

    .line 2813
    iget v1, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;->lastFetchStatus_:I

    .line 2814
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2816
    :cond_14
    iget v1, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_21

    .line 2817
    iget-boolean v1, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;->developerModeEnabled_:Z

    .line 2818
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2820
    :cond_21
    iget v1, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;->bitField0_:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2f

    const/4 v1, 0x3

    .line 2821
    iget-wide v2, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;->lastKnownExperimentStartTime_:J

    .line 2822
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeFixed64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2824
    :cond_2f
    iget-object v1, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSetLite;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 2825
    iput v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;->memoizedSerializedSize:I

    return v0
.end method

.method public hasDeveloperModeEnabled()Z
    .registers 3

    .line 2741
    iget v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public hasLastFetchStatus()Z
    .registers 3

    .line 2712
    iget v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method public hasLastKnownExperimentStartTime()Z
    .registers 3

    .line 2770
    iget v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2795
    iget v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_b

    .line 2796
    iget v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;->lastFetchStatus_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 2798
    :cond_b
    iget v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_16

    .line 2799
    iget-boolean v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;->developerModeEnabled_:Z

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 2801
    :cond_16
    iget v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_22

    const/4 v0, 0x3

    .line 2802
    iget-wide v1, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;->lastKnownExperimentStartTime_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeFixed64(IJ)V

    .line 2804
    :cond_22
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSetLite;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
