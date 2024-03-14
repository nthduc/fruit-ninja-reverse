.class public final Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "com.google.firebase:firebase-config@@19.1.4"

# interfaces
.implements Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProtoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/config/proto/Logs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AndroidConfigFetchProto"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto;",
        "Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto$Builder;",
        ">;",
        "Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProtoOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto;",
            ">;"
        }
    .end annotation
.end field

.field public static final REASON_FIELD_NUMBER:I = 0x1


# instance fields
.field private bitField0_:I

.field private reason_:Lcom/google/android/gms/config/proto/Logs$ConfigFetchReason;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 797
    new-instance v0, Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto;

    invoke-direct {v0}, Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto;-><init>()V

    sput-object v0, Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto;

    .line 798
    sget-object v0, Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto;

    invoke-virtual {v0}, Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 450
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method static synthetic access$400()Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto;
    .registers 1

    .line 445
    sget-object v0, Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto;Lcom/google/android/gms/config/proto/Logs$ConfigFetchReason;)V
    .registers 2

    .line 445
    invoke-direct {p0, p1}, Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto;->setReason(Lcom/google/android/gms/config/proto/Logs$ConfigFetchReason;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto;Lcom/google/android/gms/config/proto/Logs$ConfigFetchReason$Builder;)V
    .registers 2

    .line 445
    invoke-direct {p0, p1}, Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto;->setReason(Lcom/google/android/gms/config/proto/Logs$ConfigFetchReason$Builder;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto;Lcom/google/android/gms/config/proto/Logs$ConfigFetchReason;)V
    .registers 2

    .line 445
    invoke-direct {p0, p1}, Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto;->mergeReason(Lcom/google/android/gms/config/proto/Logs$ConfigFetchReason;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto;)V
    .registers 1

    .line 445
    invoke-direct {p0}, Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto;->clearReason()V

    return-void
.end method

.method private clearReason()V
    .registers 2

    const/4 v0, 0x0

    .line 525
    iput-object v0, p0, Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto;->reason_:Lcom/google/android/gms/config/proto/Logs$ConfigFetchReason;

    .line 526
    iget v0, p0, Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto;->bitField0_:I

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto;
    .registers 1

    .line 802
    sget-object v0, Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto;

    return-object v0
.end method

.method private mergeReason(Lcom/google/android/gms/config/proto/Logs$ConfigFetchReason;)V
    .registers 4

    .line 509
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto;->reason_:Lcom/google/android/gms/config/proto/Logs$ConfigFetchReason;

    if-eqz v0, :cond_1f

    .line 510
    invoke-static {}, Lcom/google/android/gms/config/proto/Logs$ConfigFetchReason;->getDefaultInstance()Lcom/google/android/gms/config/proto/Logs$ConfigFetchReason;

    move-result-object v1

    if-eq v0, v1, :cond_1f

    .line 511
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto;->reason_:Lcom/google/android/gms/config/proto/Logs$ConfigFetchReason;

    .line 512
    invoke-static {v0}, Lcom/google/android/gms/config/proto/Logs$ConfigFetchReason;->newBuilder(Lcom/google/android/gms/config/proto/Logs$ConfigFetchReason;)Lcom/google/android/gms/config/proto/Logs$ConfigFetchReason$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/config/proto/Logs$ConfigFetchReason$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/config/proto/Logs$ConfigFetchReason$Builder;

    invoke-virtual {p1}, Lcom/google/android/gms/config/proto/Logs$ConfigFetchReason$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/config/proto/Logs$ConfigFetchReason;

    iput-object p1, p0, Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto;->reason_:Lcom/google/android/gms/config/proto/Logs$ConfigFetchReason;

    goto :goto_21

    .line 514
    :cond_1f
    iput-object p1, p0, Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto;->reason_:Lcom/google/android/gms/config/proto/Logs$ConfigFetchReason;

    .line 516
    :goto_21
    iget p1, p0, Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto;->bitField0_:I

    return-void
.end method

.method public static newBuilder()Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto$Builder;
    .registers 1

    .line 613
    sget-object v0, Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto;

    invoke-virtual {v0}, Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto;)Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto$Builder;
    .registers 2

    .line 616
    sget-object v0, Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto;

    invoke-virtual {v0}, Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto$Builder;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 590
    sget-object v0, Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto;

    invoke-static {v0, p0}, Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 596
    sget-object v0, Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 554
    sget-object v0, Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 561
    sget-object v0, Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 601
    sget-object v0, Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 608
    sget-object v0, Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 578
    sget-object v0, Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 585
    sget-object v0, Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 566
    sget-object v0, Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 573
    sget-object v0, Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto;",
            ">;"
        }
    .end annotation

    .line 808
    sget-object v0, Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto;

    invoke-virtual {v0}, Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setReason(Lcom/google/android/gms/config/proto/Logs$ConfigFetchReason$Builder;)V
    .registers 2

    .line 498
    invoke-virtual {p1}, Lcom/google/android/gms/config/proto/Logs$ConfigFetchReason$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/config/proto/Logs$ConfigFetchReason;

    iput-object p1, p0, Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto;->reason_:Lcom/google/android/gms/config/proto/Logs$ConfigFetchReason;

    .line 499
    iget p1, p0, Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto;->bitField0_:I

    return-void
.end method

.method private setReason(Lcom/google/android/gms/config/proto/Logs$ConfigFetchReason;)V
    .registers 2

    if-eqz p1, :cond_b

    .line 486
    iput-object p1, p0, Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto;->reason_:Lcom/google/android/gms/config/proto/Logs$ConfigFetchReason;

    .line 487
    iget p1, p0, Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto;->bitField0_:I

    return-void

    .line 484
    :cond_b
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    .line 711
    sget-object v0, Lcom/google/android/gms/config/proto/Logs$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_ca

    .line 790
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 781
    :pswitch_12
    sget-object p1, Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_2b

    const-class p1, Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto;

    monitor-enter p1

    .line 782
    :try_start_19
    sget-object p2, Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p2, :cond_26

    .line 783
    new-instance p2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto;

    invoke-direct {p2, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p2, Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto;->PARSER:Lcom/google/protobuf/Parser;

    .line 785
    :cond_26
    monitor-exit p1

    goto :goto_2b

    :catchall_28
    move-exception p2

    monitor-exit p1
    :try_end_2a
    .catchall {:try_start_19 .. :try_end_2a} :catchall_28

    throw p2

    .line 787
    :cond_2b
    :goto_2b
    sget-object p1, Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto;->PARSER:Lcom/google/protobuf/Parser;

    return-object p1

    .line 735
    :pswitch_2e
    check-cast p2, Lcom/google/protobuf/CodedInputStream;

    .line 737
    check-cast p3, Lcom/google/protobuf/ExtensionRegistryLite;

    const/4 p1, 0x0

    :cond_33
    :goto_33
    if-nez p1, :cond_9b

    .line 742
    :try_start_35
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_77

    const/16 v3, 0xa

    if-eq v1, v3, :cond_47

    .line 748
    invoke-virtual {p0, v1, p2}, Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto;->parseUnknownField(ILcom/google/protobuf/CodedInputStream;)Z

    move-result v1

    if-nez v1, :cond_33

    goto :goto_77

    .line 755
    :cond_47
    iget v1, p0, Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto;->bitField0_:I

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_55

    .line 756
    iget-object v1, p0, Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto;->reason_:Lcom/google/android/gms/config/proto/Logs$ConfigFetchReason;

    invoke-virtual {v1}, Lcom/google/android/gms/config/proto/Logs$ConfigFetchReason;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/config/proto/Logs$ConfigFetchReason$Builder;

    goto :goto_56

    :cond_55
    move-object v1, v0

    .line 758
    :goto_56
    invoke-static {}, Lcom/google/android/gms/config/proto/Logs$ConfigFetchReason;->parser()Lcom/google/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p2, v3, p3}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/config/proto/Logs$ConfigFetchReason;

    iput-object v3, p0, Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto;->reason_:Lcom/google/android/gms/config/proto/Logs$ConfigFetchReason;

    if-eqz v1, :cond_71

    .line 760
    iget-object v3, p0, Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto;->reason_:Lcom/google/android/gms/config/proto/Logs$ConfigFetchReason;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/config/proto/Logs$ConfigFetchReason$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 761
    invoke-virtual {v1}, Lcom/google/android/gms/config/proto/Logs$ConfigFetchReason$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/config/proto/Logs$ConfigFetchReason;

    iput-object v1, p0, Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto;->reason_:Lcom/google/android/gms/config/proto/Logs$ConfigFetchReason;

    .line 763
    :cond_71
    iget v1, p0, Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto;->bitField0_:I

    or-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto;->bitField0_:I
    :try_end_76
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_35 .. :try_end_76} :catch_8f
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_76} :catch_7b
    .catchall {:try_start_35 .. :try_end_76} :catchall_79

    goto :goto_33

    :cond_77
    :goto_77
    const/4 p1, 0x1

    goto :goto_33

    :catchall_79
    move-exception p1

    goto :goto_9a

    :catch_7b
    move-exception p1

    .line 771
    :try_start_7c
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 773
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_8f
    move-exception p1

    .line 769
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_9a
    .catchall {:try_start_7c .. :try_end_9a} :catchall_79

    .line 774
    :goto_9a
    throw p1

    .line 778
    :cond_9b
    :pswitch_9b
    sget-object p1, Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto;

    return-object p1

    .line 725
    :pswitch_9e
    check-cast p2, Lcom/google/protobuf/GeneratedMessageLite$Visitor;

    .line 726
    check-cast p3, Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto;

    .line 727
    iget-object p1, p0, Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto;->reason_:Lcom/google/android/gms/config/proto/Logs$ConfigFetchReason;

    iget-object v0, p3, Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto;->reason_:Lcom/google/android/gms/config/proto/Logs$ConfigFetchReason;

    invoke-interface {p2, p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitMessage(Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/MessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/config/proto/Logs$ConfigFetchReason;

    iput-object p1, p0, Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto;->reason_:Lcom/google/android/gms/config/proto/Logs$ConfigFetchReason;

    .line 728
    sget-object p1, Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;

    if-ne p2, p1, :cond_b9

    .line 730
    iget p1, p0, Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto;->bitField0_:I

    iget p2, p3, Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto;->bitField0_:I

    or-int/2addr p1, p2

    iput p1, p0, Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto;->bitField0_:I

    :cond_b9
    return-object p0

    .line 722
    :pswitch_ba
    new-instance p1, Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto$Builder;

    invoke-direct {p1, v0}, Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto$Builder;-><init>(Lcom/google/android/gms/config/proto/Logs$1;)V

    return-object p1

    :pswitch_c0
    return-object v0

    .line 716
    :pswitch_c1
    sget-object p1, Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto;

    return-object p1

    .line 713
    :pswitch_c4
    new-instance p1, Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto;

    invoke-direct {p1}, Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto;-><init>()V

    return-object p1

    :pswitch_data_ca
    .packed-switch 0x1
        :pswitch_c4
        :pswitch_c1
        :pswitch_c0
        :pswitch_ba
        :pswitch_9e
        :pswitch_2e
        :pswitch_9b
        :pswitch_12
    .end packed-switch
.end method

.method public getReason()Lcom/google/android/gms/config/proto/Logs$ConfigFetchReason;
    .registers 2

    .line 473
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto;->reason_:Lcom/google/android/gms/config/proto/Logs$ConfigFetchReason;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/google/android/gms/config/proto/Logs$ConfigFetchReason;->getDefaultInstance()Lcom/google/android/gms/config/proto/Logs$ConfigFetchReason;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .line 538
    iget v0, p0, Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    :cond_6
    const/4 v0, 0x0

    .line 542
    iget v1, p0, Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_16

    .line 544
    invoke-virtual {p0}, Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto;->getReason()Lcom/google/android/gms/config/proto/Logs$ConfigFetchReason;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 546
    :cond_16
    iget-object v1, p0, Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSetLite;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 547
    iput v0, p0, Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto;->memoizedSerializedSize:I

    return v0
.end method

.method public hasReason()Z
    .registers 3

    .line 463
    iget v0, p0, Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto;->bitField0_:I

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
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 531
    iget v0, p0, Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_d

    .line 532
    invoke-virtual {p0}, Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto;->getReason()Lcom/google/android/gms/config/proto/Logs$ConfigFetchReason;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 534
    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSetLite;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
