.class public final Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "com.google.firebase:firebase-abt@@19.0.1"

# interfaces
.implements Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayloadOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldevelopers/mobile/abt/FirebaseAbt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ExperimentPayload"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;,
        Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$ExperimentOverflowPolicy;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;",
        "Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;",
        ">;",
        "Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayloadOrBuilder;"
    }
.end annotation


# static fields
.field public static final ACTIVATE_EVENT_TO_LOG_FIELD_NUMBER:I = 0x8

.field public static final CLEAR_EVENT_TO_LOG_FIELD_NUMBER:I = 0x9

.field private static final DEFAULT_INSTANCE:Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

.field public static final EXPERIMENT_ID_FIELD_NUMBER:I = 0x1

.field public static final EXPERIMENT_START_TIME_MILLIS_FIELD_NUMBER:I = 0x3

.field public static final ONGOING_EXPERIMENTS_FIELD_NUMBER:I = 0xd

.field public static final OVERFLOW_POLICY_FIELD_NUMBER:I = 0xc

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;",
            ">;"
        }
    .end annotation
.end field

.field public static final SET_EVENT_TO_LOG_FIELD_NUMBER:I = 0x7

.field public static final TIMEOUT_EVENT_TO_LOG_FIELD_NUMBER:I = 0xa

.field public static final TIME_TO_LIVE_MILLIS_FIELD_NUMBER:I = 0x6

.field public static final TRIGGER_EVENT_FIELD_NUMBER:I = 0x4

.field public static final TRIGGER_TIMEOUT_MILLIS_FIELD_NUMBER:I = 0x5

.field public static final TTL_EXPIRY_EVENT_TO_LOG_FIELD_NUMBER:I = 0xb

.field public static final VARIANT_ID_FIELD_NUMBER:I = 0x2


# instance fields
.field private activateEventToLog_:Ljava/lang/String;

.field private bitField0_:I

.field private clearEventToLog_:Ljava/lang/String;

.field private experimentId_:Ljava/lang/String;

.field private experimentStartTimeMillis_:J

.field private ongoingExperiments_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;",
            ">;"
        }
    .end annotation
.end field

.field private overflowPolicy_:I

.field private setEventToLog_:Ljava/lang/String;

.field private timeToLiveMillis_:J

.field private timeoutEventToLog_:Ljava/lang/String;

.field private triggerEvent_:Ljava/lang/String;

.field private triggerTimeoutMillis_:J

.field private ttlExpiryEventToLog_:Ljava/lang/String;

.field private variantId_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 3061
    new-instance v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-direct {v0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;-><init>()V

    sput-object v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->DEFAULT_INSTANCE:Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    .line 3062
    sget-object v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->DEFAULT_INSTANCE:Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-virtual {v0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 681
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 682
    iput-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->experimentId_:Ljava/lang/String;

    .line 683
    iput-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->variantId_:Ljava/lang/String;

    .line 684
    iput-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->triggerEvent_:Ljava/lang/String;

    .line 685
    iput-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->setEventToLog_:Ljava/lang/String;

    .line 686
    iput-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->activateEventToLog_:Ljava/lang/String;

    .line 687
    iput-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->clearEventToLog_:Ljava/lang/String;

    .line 688
    iput-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->timeoutEventToLog_:Ljava/lang/String;

    .line 689
    iput-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->ttlExpiryEventToLog_:Ljava/lang/String;

    .line 690
    invoke-static {}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->ongoingExperiments_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method static synthetic access$1000(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;)V
    .registers 1

    .line 676
    invoke-direct {p0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->clearVariantId()V

    return-void
.end method

.method static synthetic access$1100(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 676
    invoke-direct {p0, p1}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->setVariantIdBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1200(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;J)V
    .registers 3

    .line 676
    invoke-direct {p0, p1, p2}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->setExperimentStartTimeMillis(J)V

    return-void
.end method

.method static synthetic access$1300(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;)V
    .registers 1

    .line 676
    invoke-direct {p0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->clearExperimentStartTimeMillis()V

    return-void
.end method

.method static synthetic access$1400(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;Ljava/lang/String;)V
    .registers 2

    .line 676
    invoke-direct {p0, p1}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->setTriggerEvent(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;)V
    .registers 1

    .line 676
    invoke-direct {p0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->clearTriggerEvent()V

    return-void
.end method

.method static synthetic access$1600(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 676
    invoke-direct {p0, p1}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->setTriggerEventBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1700(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;J)V
    .registers 3

    .line 676
    invoke-direct {p0, p1, p2}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->setTriggerTimeoutMillis(J)V

    return-void
.end method

.method static synthetic access$1800(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;)V
    .registers 1

    .line 676
    invoke-direct {p0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->clearTriggerTimeoutMillis()V

    return-void
.end method

.method static synthetic access$1900(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;J)V
    .registers 3

    .line 676
    invoke-direct {p0, p1, p2}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->setTimeToLiveMillis(J)V

    return-void
.end method

.method static synthetic access$2000(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;)V
    .registers 1

    .line 676
    invoke-direct {p0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->clearTimeToLiveMillis()V

    return-void
.end method

.method static synthetic access$2100(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;Ljava/lang/String;)V
    .registers 2

    .line 676
    invoke-direct {p0, p1}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->setSetEventToLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2200(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;)V
    .registers 1

    .line 676
    invoke-direct {p0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->clearSetEventToLog()V

    return-void
.end method

.method static synthetic access$2300(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 676
    invoke-direct {p0, p1}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->setSetEventToLogBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2400(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;Ljava/lang/String;)V
    .registers 2

    .line 676
    invoke-direct {p0, p1}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->setActivateEventToLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2500(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;)V
    .registers 1

    .line 676
    invoke-direct {p0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->clearActivateEventToLog()V

    return-void
.end method

.method static synthetic access$2600(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 676
    invoke-direct {p0, p1}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->setActivateEventToLogBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2700(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;Ljava/lang/String;)V
    .registers 2

    .line 676
    invoke-direct {p0, p1}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->setClearEventToLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2800(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;)V
    .registers 1

    .line 676
    invoke-direct {p0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->clearClearEventToLog()V

    return-void
.end method

.method static synthetic access$2900(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 676
    invoke-direct {p0, p1}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->setClearEventToLogBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$3000(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;Ljava/lang/String;)V
    .registers 2

    .line 676
    invoke-direct {p0, p1}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->setTimeoutEventToLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3100(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;)V
    .registers 1

    .line 676
    invoke-direct {p0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->clearTimeoutEventToLog()V

    return-void
.end method

.method static synthetic access$3200(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 676
    invoke-direct {p0, p1}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->setTimeoutEventToLogBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$3300(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;Ljava/lang/String;)V
    .registers 2

    .line 676
    invoke-direct {p0, p1}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->setTtlExpiryEventToLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3400(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;)V
    .registers 1

    .line 676
    invoke-direct {p0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->clearTtlExpiryEventToLog()V

    return-void
.end method

.method static synthetic access$3500(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 676
    invoke-direct {p0, p1}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->setTtlExpiryEventToLogBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$3600(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;I)V
    .registers 2

    .line 676
    invoke-direct {p0, p1}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->setOverflowPolicyValue(I)V

    return-void
.end method

.method static synthetic access$3700(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$ExperimentOverflowPolicy;)V
    .registers 2

    .line 676
    invoke-direct {p0, p1}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->setOverflowPolicy(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$ExperimentOverflowPolicy;)V

    return-void
.end method

.method static synthetic access$3800(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;)V
    .registers 1

    .line 676
    invoke-direct {p0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->clearOverflowPolicy()V

    return-void
.end method

.method static synthetic access$3900(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;ILdevelopers/mobile/abt/FirebaseAbt$ExperimentLite;)V
    .registers 3

    .line 676
    invoke-direct {p0, p1, p2}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->setOngoingExperiments(ILdevelopers/mobile/abt/FirebaseAbt$ExperimentLite;)V

    return-void
.end method

.method static synthetic access$4000(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;ILdevelopers/mobile/abt/FirebaseAbt$ExperimentLite$Builder;)V
    .registers 3

    .line 676
    invoke-direct {p0, p1, p2}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->setOngoingExperiments(ILdevelopers/mobile/abt/FirebaseAbt$ExperimentLite$Builder;)V

    return-void
.end method

.method static synthetic access$4100(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;)V
    .registers 2

    .line 676
    invoke-direct {p0, p1}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->addOngoingExperiments(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;)V

    return-void
.end method

.method static synthetic access$4200(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;ILdevelopers/mobile/abt/FirebaseAbt$ExperimentLite;)V
    .registers 3

    .line 676
    invoke-direct {p0, p1, p2}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->addOngoingExperiments(ILdevelopers/mobile/abt/FirebaseAbt$ExperimentLite;)V

    return-void
.end method

.method static synthetic access$4300(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite$Builder;)V
    .registers 2

    .line 676
    invoke-direct {p0, p1}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->addOngoingExperiments(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite$Builder;)V

    return-void
.end method

.method static synthetic access$4400(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;ILdevelopers/mobile/abt/FirebaseAbt$ExperimentLite$Builder;)V
    .registers 3

    .line 676
    invoke-direct {p0, p1, p2}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->addOngoingExperiments(ILdevelopers/mobile/abt/FirebaseAbt$ExperimentLite$Builder;)V

    return-void
.end method

.method static synthetic access$4500(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;Ljava/lang/Iterable;)V
    .registers 2

    .line 676
    invoke-direct {p0, p1}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->addAllOngoingExperiments(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$4600(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;)V
    .registers 1

    .line 676
    invoke-direct {p0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->clearOngoingExperiments()V

    return-void
.end method

.method static synthetic access$4700(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;I)V
    .registers 2

    .line 676
    invoke-direct {p0, p1}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->removeOngoingExperiments(I)V

    return-void
.end method

.method static synthetic access$500()Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;
    .registers 1

    .line 676
    sget-object v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->DEFAULT_INSTANCE:Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    return-object v0
.end method

.method static synthetic access$600(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;Ljava/lang/String;)V
    .registers 2

    .line 676
    invoke-direct {p0, p1}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->setExperimentId(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;)V
    .registers 1

    .line 676
    invoke-direct {p0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->clearExperimentId()V

    return-void
.end method

.method static synthetic access$800(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 676
    invoke-direct {p0, p1}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->setExperimentIdBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$900(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;Ljava/lang/String;)V
    .registers 2

    .line 676
    invoke-direct {p0, p1}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->setVariantId(Ljava/lang/String;)V

    return-void
.end method

.method private addAllOngoingExperiments(Ljava/lang/Iterable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;",
            ">;)V"
        }
    .end annotation

    .line 1754
    invoke-direct {p0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->ensureOngoingExperimentsIsMutable()V

    .line 1755
    iget-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->ongoingExperiments_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-void
.end method

.method private addOngoingExperiments(ILdevelopers/mobile/abt/FirebaseAbt$ExperimentLite$Builder;)V
    .registers 4

    .line 1740
    invoke-direct {p0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->ensureOngoingExperimentsIsMutable()V

    .line 1741
    iget-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->ongoingExperiments_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addOngoingExperiments(ILdevelopers/mobile/abt/FirebaseAbt$ExperimentLite;)V
    .registers 4

    if-eqz p2, :cond_b

    .line 1712
    invoke-direct {p0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->ensureOngoingExperimentsIsMutable()V

    .line 1713
    iget-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->ongoingExperiments_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void

    .line 1710
    :cond_b
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method private addOngoingExperiments(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite$Builder;)V
    .registers 3

    .line 1726
    invoke-direct {p0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->ensureOngoingExperimentsIsMutable()V

    .line 1727
    iget-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->ongoingExperiments_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addOngoingExperiments(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;)V
    .registers 3

    if-eqz p1, :cond_b

    .line 1695
    invoke-direct {p0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->ensureOngoingExperimentsIsMutable()V

    .line 1696
    iget-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->ongoingExperiments_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void

    .line 1693
    :cond_b
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method private clearActivateEventToLog()V
    .registers 2

    .line 1278
    invoke-static {}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->getDefaultInstance()Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    move-result-object v0

    invoke-virtual {v0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->getActivateEventToLog()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->activateEventToLog_:Ljava/lang/String;

    return-void
.end method

.method private clearClearEventToLog()V
    .registers 2

    .line 1349
    invoke-static {}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->getDefaultInstance()Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    move-result-object v0

    invoke-virtual {v0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->getClearEventToLog()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->clearEventToLog_:Ljava/lang/String;

    return-void
.end method

.method private clearExperimentId()V
    .registers 2

    .line 855
    invoke-static {}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->getDefaultInstance()Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    move-result-object v0

    invoke-virtual {v0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->getExperimentId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->experimentId_:Ljava/lang/String;

    return-void
.end method

.method private clearExperimentStartTimeMillis()V
    .registers 3

    const-wide/16 v0, 0x0

    .line 984
    iput-wide v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->experimentStartTimeMillis_:J

    return-void
.end method

.method private clearOngoingExperiments()V
    .registers 2

    .line 1768
    invoke-static {}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->ongoingExperiments_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearOverflowPolicy()V
    .registers 2

    const/4 v0, 0x0

    .line 1577
    iput v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->overflowPolicy_:I

    return-void
.end method

.method private clearSetEventToLog()V
    .registers 2

    .line 1207
    invoke-static {}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->getDefaultInstance()Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    move-result-object v0

    invoke-virtual {v0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->getSetEventToLog()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->setEventToLog_:Ljava/lang/String;

    return-void
.end method

.method private clearTimeToLiveMillis()V
    .registers 3

    const-wide/16 v0, 0x0

    .line 1153
    iput-wide v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->timeToLiveMillis_:J

    return-void
.end method

.method private clearTimeoutEventToLog()V
    .registers 2

    .line 1424
    invoke-static {}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->getDefaultInstance()Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    move-result-object v0

    invoke-virtual {v0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->getTimeoutEventToLog()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->timeoutEventToLog_:Ljava/lang/String;

    return-void
.end method

.method private clearTriggerEvent()V
    .registers 2

    .line 1034
    invoke-static {}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->getDefaultInstance()Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    move-result-object v0

    invoke-virtual {v0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->getTriggerEvent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->triggerEvent_:Ljava/lang/String;

    return-void
.end method

.method private clearTriggerTimeoutMillis()V
    .registers 3

    const-wide/16 v0, 0x0

    .line 1097
    iput-wide v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->triggerTimeoutMillis_:J

    return-void
.end method

.method private clearTtlExpiryEventToLog()V
    .registers 2

    .line 1500
    invoke-static {}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->getDefaultInstance()Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    move-result-object v0

    invoke-virtual {v0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->getTtlExpiryEventToLog()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->ttlExpiryEventToLog_:Ljava/lang/String;

    return-void
.end method

.method private clearVariantId()V
    .registers 2

    .line 929
    invoke-static {}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->getDefaultInstance()Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    move-result-object v0

    invoke-virtual {v0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->getVariantId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->variantId_:Ljava/lang/String;

    return-void
.end method

.method private ensureOngoingExperimentsIsMutable()V
    .registers 2

    .line 1645
    iget-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->ongoingExperiments_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_10

    .line 1646
    iget-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->ongoingExperiments_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1647
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->ongoingExperiments_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_10
    return-void
.end method

.method public static getDefaultInstance()Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;
    .registers 1

    .line 3066
    sget-object v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->DEFAULT_INSTANCE:Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    return-object v0
.end method

.method public static newBuilder()Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;
    .registers 1

    .line 1950
    sget-object v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->DEFAULT_INSTANCE:Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-virtual {v0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;

    return-object v0
.end method

.method public static newBuilder(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;)Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;
    .registers 2

    .line 1953
    sget-object v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->DEFAULT_INSTANCE:Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-virtual {v0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;

    invoke-virtual {v0, p0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1927
    sget-object v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->DEFAULT_INSTANCE:Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-static {v0, p0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1933
    sget-object v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->DEFAULT_INSTANCE:Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-static {v0, p0, p1}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1891
    sget-object v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->DEFAULT_INSTANCE:Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1898
    sget-object v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->DEFAULT_INSTANCE:Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1938
    sget-object v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->DEFAULT_INSTANCE:Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1945
    sget-object v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->DEFAULT_INSTANCE:Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1915
    sget-object v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->DEFAULT_INSTANCE:Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1922
    sget-object v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->DEFAULT_INSTANCE:Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    return-object p0
.end method

.method public static parseFrom([B)Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1903
    sget-object v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->DEFAULT_INSTANCE:Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1910
    sget-object v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->DEFAULT_INSTANCE:Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;",
            ">;"
        }
    .end annotation

    .line 3072
    sget-object v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->DEFAULT_INSTANCE:Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-virtual {v0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeOngoingExperiments(I)V
    .registers 3

    .line 1780
    invoke-direct {p0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->ensureOngoingExperimentsIsMutable()V

    .line 1781
    iget-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->ongoingExperiments_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setActivateEventToLog(Ljava/lang/String;)V
    .registers 2

    if-eqz p1, :cond_5

    .line 1266
    iput-object p1, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->activateEventToLog_:Ljava/lang/String;

    return-void

    .line 1263
    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method private setActivateEventToLogBytes(Lcom/google/protobuf/ByteString;)V
    .registers 2

    if-eqz p1, :cond_c

    .line 1293
    invoke-static {p1}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 1295
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->activateEventToLog_:Ljava/lang/String;

    return-void

    .line 1291
    :cond_c
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method private setClearEventToLog(Ljava/lang/String;)V
    .registers 2

    if-eqz p1, :cond_5

    .line 1337
    iput-object p1, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->clearEventToLog_:Ljava/lang/String;

    return-void

    .line 1334
    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method private setClearEventToLogBytes(Lcom/google/protobuf/ByteString;)V
    .registers 2

    if-eqz p1, :cond_c

    .line 1364
    invoke-static {p1}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 1366
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->clearEventToLog_:Ljava/lang/String;

    return-void

    .line 1362
    :cond_c
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method private setExperimentId(Ljava/lang/String;)V
    .registers 2

    if-eqz p1, :cond_5

    .line 840
    iput-object p1, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->experimentId_:Ljava/lang/String;

    return-void

    .line 837
    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method private setExperimentIdBytes(Lcom/google/protobuf/ByteString;)V
    .registers 2

    if-eqz p1, :cond_c

    .line 873
    invoke-static {p1}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 875
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->experimentId_:Ljava/lang/String;

    return-void

    .line 871
    :cond_c
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method private setExperimentStartTimeMillis(J)V
    .registers 3

    .line 972
    iput-wide p1, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->experimentStartTimeMillis_:J

    return-void
.end method

.method private setOngoingExperiments(ILdevelopers/mobile/abt/FirebaseAbt$ExperimentLite$Builder;)V
    .registers 4

    .line 1679
    invoke-direct {p0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->ensureOngoingExperimentsIsMutable()V

    .line 1680
    iget-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->ongoingExperiments_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setOngoingExperiments(ILdevelopers/mobile/abt/FirebaseAbt$ExperimentLite;)V
    .registers 4

    if-eqz p2, :cond_b

    .line 1665
    invoke-direct {p0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->ensureOngoingExperimentsIsMutable()V

    .line 1666
    iget-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->ongoingExperiments_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 1663
    :cond_b
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method private setOverflowPolicy(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$ExperimentOverflowPolicy;)V
    .registers 2

    if-eqz p1, :cond_9

    .line 1566
    invoke-virtual {p1}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$ExperimentOverflowPolicy;->getNumber()I

    move-result p1

    iput p1, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->overflowPolicy_:I

    return-void

    .line 1563
    :cond_9
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method private setOverflowPolicyValue(I)V
    .registers 2

    .line 1552
    iput p1, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->overflowPolicy_:I

    return-void
.end method

.method private setSetEventToLog(Ljava/lang/String;)V
    .registers 2

    if-eqz p1, :cond_5

    .line 1195
    iput-object p1, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->setEventToLog_:Ljava/lang/String;

    return-void

    .line 1192
    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method private setSetEventToLogBytes(Lcom/google/protobuf/ByteString;)V
    .registers 2

    if-eqz p1, :cond_c

    .line 1222
    invoke-static {p1}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 1224
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->setEventToLog_:Ljava/lang/String;

    return-void

    .line 1220
    :cond_c
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method private setTimeToLiveMillis(J)V
    .registers 3

    .line 1135
    iput-wide p1, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->timeToLiveMillis_:J

    return-void
.end method

.method private setTimeoutEventToLog(Ljava/lang/String;)V
    .registers 2

    if-eqz p1, :cond_5

    .line 1411
    iput-object p1, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->timeoutEventToLog_:Ljava/lang/String;

    return-void

    .line 1408
    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method private setTimeoutEventToLogBytes(Lcom/google/protobuf/ByteString;)V
    .registers 2

    if-eqz p1, :cond_c

    .line 1440
    invoke-static {p1}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 1442
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->timeoutEventToLog_:Ljava/lang/String;

    return-void

    .line 1438
    :cond_c
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method private setTriggerEvent(Ljava/lang/String;)V
    .registers 2

    if-eqz p1, :cond_5

    .line 1023
    iput-object p1, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->triggerEvent_:Ljava/lang/String;

    return-void

    .line 1020
    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method private setTriggerEventBytes(Lcom/google/protobuf/ByteString;)V
    .registers 2

    if-eqz p1, :cond_c

    .line 1048
    invoke-static {p1}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 1050
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->triggerEvent_:Ljava/lang/String;

    return-void

    .line 1046
    :cond_c
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method private setTriggerTimeoutMillis(J)V
    .registers 3

    .line 1082
    iput-wide p1, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->triggerTimeoutMillis_:J

    return-void
.end method

.method private setTtlExpiryEventToLog(Ljava/lang/String;)V
    .registers 2

    if-eqz p1, :cond_5

    .line 1487
    iput-object p1, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->ttlExpiryEventToLog_:Ljava/lang/String;

    return-void

    .line 1484
    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method private setTtlExpiryEventToLogBytes(Lcom/google/protobuf/ByteString;)V
    .registers 2

    if-eqz p1, :cond_c

    .line 1516
    invoke-static {p1}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 1518
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->ttlExpiryEventToLog_:Ljava/lang/String;

    return-void

    .line 1514
    :cond_c
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method private setVariantId(Ljava/lang/String;)V
    .registers 2

    if-eqz p1, :cond_5

    .line 917
    iput-object p1, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->variantId_:Ljava/lang/String;

    return-void

    .line 914
    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method private setVariantIdBytes(Lcom/google/protobuf/ByteString;)V
    .registers 2

    if-eqz p1, :cond_c

    .line 944
    invoke-static {p1}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 946
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->variantId_:Ljava/lang/String;

    return-void

    .line 942
    :cond_c
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 16

    .line 2886
    sget-object v0, Ldevelopers/mobile/abt/FirebaseAbt$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_242

    .line 3054
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 3045
    :pswitch_14
    sget-object p1, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_2d

    const-class p1, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    monitor-enter p1

    .line 3046
    :try_start_1b
    sget-object p2, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p2, :cond_28

    .line 3047
    new-instance p2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->DEFAULT_INSTANCE:Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-direct {p2, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p2, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->PARSER:Lcom/google/protobuf/Parser;

    .line 3049
    :cond_28
    monitor-exit p1

    goto :goto_2d

    :catchall_2a
    move-exception p2

    monitor-exit p1
    :try_end_2c
    .catchall {:try_start_1b .. :try_end_2c} :catchall_2a

    throw p2

    .line 3051
    :cond_2d
    :goto_2d
    sget-object p1, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->PARSER:Lcom/google/protobuf/Parser;

    return-object p1

    .line 2934
    :pswitch_30
    check-cast p2, Lcom/google/protobuf/CodedInputStream;

    .line 2936
    check-cast p3, Lcom/google/protobuf/ExtensionRegistryLite;

    :cond_34
    :goto_34
    if-nez v1, :cond_e0

    .line 2941
    :try_start_36
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result p1

    sparse-switch p1, :sswitch_data_256

    .line 2947
    invoke-virtual {p2, p1}, Lcom/google/protobuf/CodedInputStream;->skipField(I)Z

    move-result p1

    goto/16 :goto_bb

    .line 3022
    :sswitch_43
    iget-object p1, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->ongoingExperiments_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p1}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result p1

    if-nez p1, :cond_53

    .line 3023
    iget-object p1, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->ongoingExperiments_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 3024
    invoke-static {p1}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object p1

    iput-object p1, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->ongoingExperiments_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 3026
    :cond_53
    iget-object p1, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->ongoingExperiments_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 3027
    invoke-static {}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;->parser()Lcom/google/protobuf/Parser;

    move-result-object v0

    invoke-virtual {p2, v0, p3}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;

    .line 3026
    invoke-interface {p1, v0}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    goto :goto_34

    .line 3016
    :sswitch_63
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result p1

    .line 3018
    iput p1, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->overflowPolicy_:I

    goto :goto_34

    .line 3010
    :sswitch_6a
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object p1

    .line 3012
    iput-object p1, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->ttlExpiryEventToLog_:Ljava/lang/String;

    goto :goto_34

    .line 3004
    :sswitch_71
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object p1

    .line 3006
    iput-object p1, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->timeoutEventToLog_:Ljava/lang/String;

    goto :goto_34

    .line 2998
    :sswitch_78
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object p1

    .line 3000
    iput-object p1, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->clearEventToLog_:Ljava/lang/String;

    goto :goto_34

    .line 2992
    :sswitch_7f
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object p1

    .line 2994
    iput-object p1, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->activateEventToLog_:Ljava/lang/String;

    goto :goto_34

    .line 2986
    :sswitch_86
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object p1

    .line 2988
    iput-object p1, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->setEventToLog_:Ljava/lang/String;

    goto :goto_34

    .line 2982
    :sswitch_8d
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    iput-wide v3, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->timeToLiveMillis_:J

    goto :goto_34

    .line 2977
    :sswitch_94
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    iput-wide v3, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->triggerTimeoutMillis_:J

    goto :goto_34

    .line 2970
    :sswitch_9b
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object p1

    .line 2972
    iput-object p1, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->triggerEvent_:Ljava/lang/String;

    goto :goto_34

    .line 2966
    :sswitch_a2
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    iput-wide v3, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->experimentStartTimeMillis_:J

    goto :goto_34

    .line 2959
    :sswitch_a9
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object p1

    .line 2961
    iput-object p1, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->variantId_:Ljava/lang/String;

    goto :goto_34

    .line 2953
    :sswitch_b0
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object p1

    .line 2955
    iput-object p1, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->experimentId_:Ljava/lang/String;
    :try_end_b6
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_36 .. :try_end_b6} :catch_d4
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_b6} :catch_c0
    .catchall {:try_start_36 .. :try_end_b6} :catchall_be

    goto/16 :goto_34

    :goto_b8
    :sswitch_b8
    const/4 v1, 0x1

    goto/16 :goto_34

    :goto_bb
    if-nez p1, :cond_34

    goto :goto_b8

    :catchall_be
    move-exception p1

    goto :goto_df

    :catch_c0
    move-exception p1

    .line 3035
    :try_start_c1
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 3037
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_d4
    move-exception p1

    .line 3033
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_df
    .catchall {:try_start_c1 .. :try_end_df} :catchall_be

    .line 3038
    :goto_df
    throw p1

    .line 3042
    :cond_e0
    :pswitch_e0
    sget-object p1, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->DEFAULT_INSTANCE:Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    return-object p1

    .line 2901
    :pswitch_e3
    move-object p1, p2

    check-cast p1, Lcom/google/protobuf/GeneratedMessageLite$Visitor;

    .line 2902
    check-cast p3, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    .line 2903
    iget-object p2, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->experimentId_:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    xor-int/2addr p2, v2

    iget-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->experimentId_:Ljava/lang/String;

    iget-object v3, p3, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->experimentId_:Ljava/lang/String;

    .line 2904
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v2

    iget-object v4, p3, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->experimentId_:Ljava/lang/String;

    .line 2903
    invoke-interface {p1, p2, v0, v3, v4}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->experimentId_:Ljava/lang/String;

    .line 2905
    iget-object p2, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->variantId_:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    xor-int/2addr p2, v2

    iget-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->variantId_:Ljava/lang/String;

    iget-object v3, p3, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->variantId_:Ljava/lang/String;

    .line 2906
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v2

    iget-object v4, p3, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->variantId_:Ljava/lang/String;

    .line 2905
    invoke-interface {p1, p2, v0, v3, v4}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->variantId_:Ljava/lang/String;

    .line 2907
    iget-wide v3, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->experimentStartTimeMillis_:J

    const-wide/16 v10, 0x0

    cmp-long p2, v3, v10

    if-eqz p2, :cond_122

    const/4 v4, 0x1

    goto :goto_123

    :cond_122
    const/4 v4, 0x0

    :goto_123
    iget-wide v5, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->experimentStartTimeMillis_:J

    iget-wide v7, p3, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->experimentStartTimeMillis_:J

    cmp-long p2, v7, v10

    if-eqz p2, :cond_12d

    const/4 v7, 0x1

    goto :goto_12e

    :cond_12d
    const/4 v7, 0x0

    :goto_12e
    iget-wide v8, p3, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->experimentStartTimeMillis_:J

    move-object v3, p1

    invoke-interface/range {v3 .. v9}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitLong(ZJZJ)J

    move-result-wide v3

    iput-wide v3, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->experimentStartTimeMillis_:J

    .line 2909
    iget-object p2, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->triggerEvent_:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    xor-int/2addr p2, v2

    iget-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->triggerEvent_:Ljava/lang/String;

    iget-object v3, p3, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->triggerEvent_:Ljava/lang/String;

    .line 2910
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v2

    iget-object v4, p3, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->triggerEvent_:Ljava/lang/String;

    .line 2909
    invoke-interface {p1, p2, v0, v3, v4}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->triggerEvent_:Ljava/lang/String;

    .line 2911
    iget-wide v3, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->triggerTimeoutMillis_:J

    cmp-long p2, v3, v10

    if-eqz p2, :cond_157

    const/4 v4, 0x1

    goto :goto_158

    :cond_157
    const/4 v4, 0x0

    :goto_158
    iget-wide v5, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->triggerTimeoutMillis_:J

    iget-wide v7, p3, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->triggerTimeoutMillis_:J

    cmp-long p2, v7, v10

    if-eqz p2, :cond_162

    const/4 v7, 0x1

    goto :goto_163

    :cond_162
    const/4 v7, 0x0

    :goto_163
    iget-wide v8, p3, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->triggerTimeoutMillis_:J

    move-object v3, p1

    invoke-interface/range {v3 .. v9}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitLong(ZJZJ)J

    move-result-wide v3

    iput-wide v3, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->triggerTimeoutMillis_:J

    .line 2913
    iget-wide v3, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->timeToLiveMillis_:J

    cmp-long p2, v3, v10

    if-eqz p2, :cond_174

    const/4 v4, 0x1

    goto :goto_175

    :cond_174
    const/4 v4, 0x0

    :goto_175
    iget-wide v5, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->timeToLiveMillis_:J

    iget-wide v7, p3, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->timeToLiveMillis_:J

    cmp-long p2, v7, v10

    if-eqz p2, :cond_17f

    const/4 v7, 0x1

    goto :goto_180

    :cond_17f
    const/4 v7, 0x0

    :goto_180
    iget-wide v8, p3, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->timeToLiveMillis_:J

    move-object v3, p1

    invoke-interface/range {v3 .. v9}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitLong(ZJZJ)J

    move-result-wide v3

    iput-wide v3, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->timeToLiveMillis_:J

    .line 2915
    iget-object p2, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->setEventToLog_:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    xor-int/2addr p2, v2

    iget-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->setEventToLog_:Ljava/lang/String;

    iget-object v3, p3, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->setEventToLog_:Ljava/lang/String;

    .line 2916
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v2

    iget-object v4, p3, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->setEventToLog_:Ljava/lang/String;

    .line 2915
    invoke-interface {p1, p2, v0, v3, v4}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->setEventToLog_:Ljava/lang/String;

    .line 2917
    iget-object p2, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->activateEventToLog_:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    xor-int/2addr p2, v2

    iget-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->activateEventToLog_:Ljava/lang/String;

    iget-object v3, p3, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->activateEventToLog_:Ljava/lang/String;

    .line 2918
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v2

    iget-object v4, p3, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->activateEventToLog_:Ljava/lang/String;

    .line 2917
    invoke-interface {p1, p2, v0, v3, v4}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->activateEventToLog_:Ljava/lang/String;

    .line 2919
    iget-object p2, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->clearEventToLog_:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    xor-int/2addr p2, v2

    iget-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->clearEventToLog_:Ljava/lang/String;

    iget-object v3, p3, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->clearEventToLog_:Ljava/lang/String;

    .line 2920
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v2

    iget-object v4, p3, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->clearEventToLog_:Ljava/lang/String;

    .line 2919
    invoke-interface {p1, p2, v0, v3, v4}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->clearEventToLog_:Ljava/lang/String;

    .line 2921
    iget-object p2, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->timeoutEventToLog_:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    xor-int/2addr p2, v2

    iget-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->timeoutEventToLog_:Ljava/lang/String;

    iget-object v3, p3, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->timeoutEventToLog_:Ljava/lang/String;

    .line 2922
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v2

    iget-object v4, p3, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->timeoutEventToLog_:Ljava/lang/String;

    .line 2921
    invoke-interface {p1, p2, v0, v3, v4}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->timeoutEventToLog_:Ljava/lang/String;

    .line 2923
    iget-object p2, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->ttlExpiryEventToLog_:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    xor-int/2addr p2, v2

    iget-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->ttlExpiryEventToLog_:Ljava/lang/String;

    iget-object v3, p3, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->ttlExpiryEventToLog_:Ljava/lang/String;

    .line 2924
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v2

    iget-object v4, p3, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->ttlExpiryEventToLog_:Ljava/lang/String;

    .line 2923
    invoke-interface {p1, p2, v0, v3, v4}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->ttlExpiryEventToLog_:Ljava/lang/String;

    .line 2925
    iget p2, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->overflowPolicy_:I

    if-eqz p2, :cond_207

    const/4 p2, 0x1

    goto :goto_208

    :cond_207
    const/4 p2, 0x0

    :goto_208
    iget v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->overflowPolicy_:I

    iget v3, p3, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->overflowPolicy_:I

    if-eqz v3, :cond_20f

    const/4 v1, 0x1

    :cond_20f
    iget v2, p3, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->overflowPolicy_:I

    invoke-interface {p1, p2, v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p2

    iput p2, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->overflowPolicy_:I

    .line 2926
    iget-object p2, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->ongoingExperiments_:Lcom/google/protobuf/Internal$ProtobufList;

    iget-object v0, p3, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->ongoingExperiments_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p1, p2, v0}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitList(Lcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object p2

    iput-object p2, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->ongoingExperiments_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 2927
    sget-object p2, Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;

    if-ne p1, p2, :cond_22c

    .line 2929
    iget p1, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->bitField0_:I

    iget p2, p3, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->bitField0_:I

    or-int/2addr p1, p2

    iput p1, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->bitField0_:I

    :cond_22c
    return-object p0

    .line 2898
    :pswitch_22d
    new-instance p1, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;

    invoke-direct {p1, v0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;-><init>(Ldevelopers/mobile/abt/FirebaseAbt$1;)V

    return-object p1

    .line 2894
    :pswitch_233
    iget-object p1, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->ongoingExperiments_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p1}, Lcom/google/protobuf/Internal$ProtobufList;->makeImmutable()V

    return-object v0

    .line 2891
    :pswitch_239
    sget-object p1, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->DEFAULT_INSTANCE:Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    return-object p1

    .line 2888
    :pswitch_23c
    new-instance p1, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-direct {p1}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;-><init>()V

    return-object p1

    :pswitch_data_242
    .packed-switch 0x1
        :pswitch_23c
        :pswitch_239
        :pswitch_233
        :pswitch_22d
        :pswitch_e3
        :pswitch_30
        :pswitch_e0
        :pswitch_14
    .end packed-switch

    :sswitch_data_256
    .sparse-switch
        0x0 -> :sswitch_b8
        0xa -> :sswitch_b0
        0x12 -> :sswitch_a9
        0x18 -> :sswitch_a2
        0x22 -> :sswitch_9b
        0x28 -> :sswitch_94
        0x30 -> :sswitch_8d
        0x3a -> :sswitch_86
        0x42 -> :sswitch_7f
        0x4a -> :sswitch_78
        0x52 -> :sswitch_71
        0x5a -> :sswitch_6a
        0x60 -> :sswitch_63
        0x6a -> :sswitch_43
    .end sparse-switch
.end method

.method public getActivateEventToLog()Ljava/lang/String;
    .registers 2

    .line 1238
    iget-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->activateEventToLog_:Ljava/lang/String;

    return-object v0
.end method

.method public getActivateEventToLogBytes()Lcom/google/protobuf/ByteString;
    .registers 2

    .line 1250
    iget-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->activateEventToLog_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getClearEventToLog()Ljava/lang/String;
    .registers 2

    .line 1309
    iget-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->clearEventToLog_:Ljava/lang/String;

    return-object v0
.end method

.method public getClearEventToLogBytes()Lcom/google/protobuf/ByteString;
    .registers 2

    .line 1321
    iget-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->clearEventToLog_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getExperimentId()Ljava/lang/String;
    .registers 2

    .line 806
    iget-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->experimentId_:Ljava/lang/String;

    return-object v0
.end method

.method public getExperimentIdBytes()Lcom/google/protobuf/ByteString;
    .registers 2

    .line 821
    iget-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->experimentId_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getExperimentStartTimeMillis()J
    .registers 3

    .line 960
    iget-wide v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->experimentStartTimeMillis_:J

    return-wide v0
.end method

.method public getOngoingExperiments(I)Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;
    .registers 3

    .line 1629
    iget-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->ongoingExperiments_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;

    return-object p1
.end method

.method public getOngoingExperimentsCount()I
    .registers 2

    .line 1617
    iget-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->ongoingExperiments_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getOngoingExperimentsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;",
            ">;"
        }
    .end annotation

    .line 1592
    iget-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->ongoingExperiments_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getOngoingExperimentsOrBuilder(I)Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLiteOrBuilder;
    .registers 3

    .line 1642
    iget-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->ongoingExperiments_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLiteOrBuilder;

    return-object p1
.end method

.method public getOngoingExperimentsOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLiteOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1605
    iget-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->ongoingExperiments_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getOverflowPolicy()Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$ExperimentOverflowPolicy;
    .registers 2

    .line 1541
    iget v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->overflowPolicy_:I

    invoke-static {v0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$ExperimentOverflowPolicy;->forNumber(I)Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$ExperimentOverflowPolicy;

    move-result-object v0

    if-nez v0, :cond_a

    .line 1542
    sget-object v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$ExperimentOverflowPolicy;->UNRECOGNIZED:Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$ExperimentOverflowPolicy;

    :cond_a
    return-object v0
.end method

.method public getOverflowPolicyValue()I
    .registers 2

    .line 1531
    iget v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->overflowPolicy_:I

    return v0
.end method

.method public getSerializedSize()I
    .registers 8

    .line 1828
    iget v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    .line 1832
    :cond_6
    iget-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->experimentId_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1a

    .line 1834
    invoke-virtual {p0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->getExperimentId()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v2, v0}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    .line 1836
    :goto_1b
    iget-object v2, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->variantId_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2d

    const/4 v2, 0x2

    .line 1838
    invoke-virtual {p0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->getVariantId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1840
    :cond_2d
    iget-wide v2, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->experimentStartTimeMillis_:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_3b

    const/4 v6, 0x3

    .line 1842
    invoke-static {v6, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 1844
    :cond_3b
    iget-object v2, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->triggerEvent_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4d

    const/4 v2, 0x4

    .line 1846
    invoke-virtual {p0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->getTriggerEvent()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1848
    :cond_4d
    iget-wide v2, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->triggerTimeoutMillis_:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_59

    const/4 v6, 0x5

    .line 1850
    invoke-static {v6, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 1852
    :cond_59
    iget-wide v2, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->timeToLiveMillis_:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_65

    const/4 v4, 0x6

    .line 1854
    invoke-static {v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 1856
    :cond_65
    iget-object v2, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->setEventToLog_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_77

    const/4 v2, 0x7

    .line 1858
    invoke-virtual {p0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->getSetEventToLog()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1860
    :cond_77
    iget-object v2, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->activateEventToLog_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8a

    const/16 v2, 0x8

    .line 1862
    invoke-virtual {p0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->getActivateEventToLog()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1864
    :cond_8a
    iget-object v2, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->clearEventToLog_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9d

    const/16 v2, 0x9

    .line 1866
    invoke-virtual {p0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->getClearEventToLog()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1868
    :cond_9d
    iget-object v2, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->timeoutEventToLog_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_b0

    const/16 v2, 0xa

    .line 1870
    invoke-virtual {p0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->getTimeoutEventToLog()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1872
    :cond_b0
    iget-object v2, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->ttlExpiryEventToLog_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_c3

    const/16 v2, 0xb

    .line 1874
    invoke-virtual {p0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->getTtlExpiryEventToLog()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1876
    :cond_c3
    iget v2, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->overflowPolicy_:I

    sget-object v3, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$ExperimentOverflowPolicy;->POLICY_UNSPECIFIED:Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$ExperimentOverflowPolicy;

    invoke-virtual {v3}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$ExperimentOverflowPolicy;->getNumber()I

    move-result v3

    if-eq v2, v3, :cond_d6

    const/16 v2, 0xc

    .line 1877
    iget v3, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->overflowPolicy_:I

    .line 1878
    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 1880
    :cond_d6
    :goto_d6
    iget-object v2, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->ongoingExperiments_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v2}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v2

    if-ge v1, v2, :cond_f0

    const/16 v2, 0xd

    .line 1881
    iget-object v3, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->ongoingExperiments_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1882
    invoke-interface {v3, v1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_d6

    .line 1884
    :cond_f0
    iput v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->memoizedSerializedSize:I

    return v0
.end method

.method public getSetEventToLog()Ljava/lang/String;
    .registers 2

    .line 1167
    iget-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->setEventToLog_:Ljava/lang/String;

    return-object v0
.end method

.method public getSetEventToLogBytes()Lcom/google/protobuf/ByteString;
    .registers 2

    .line 1179
    iget-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->setEventToLog_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTimeToLiveMillis()J
    .registers 3

    .line 1117
    iget-wide v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->timeToLiveMillis_:J

    return-wide v0
.end method

.method public getTimeoutEventToLog()Ljava/lang/String;
    .registers 2

    .line 1381
    iget-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->timeoutEventToLog_:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeoutEventToLogBytes()Lcom/google/protobuf/ByteString;
    .registers 2

    .line 1394
    iget-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->timeoutEventToLog_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTriggerEvent()Ljava/lang/String;
    .registers 2

    .line 997
    iget-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->triggerEvent_:Ljava/lang/String;

    return-object v0
.end method

.method public getTriggerEventBytes()Lcom/google/protobuf/ByteString;
    .registers 2

    .line 1008
    iget-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->triggerEvent_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTriggerTimeoutMillis()J
    .registers 3

    .line 1067
    iget-wide v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->triggerTimeoutMillis_:J

    return-wide v0
.end method

.method public getTtlExpiryEventToLog()Ljava/lang/String;
    .registers 2

    .line 1457
    iget-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->ttlExpiryEventToLog_:Ljava/lang/String;

    return-object v0
.end method

.method public getTtlExpiryEventToLogBytes()Lcom/google/protobuf/ByteString;
    .registers 2

    .line 1470
    iget-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->ttlExpiryEventToLog_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getVariantId()Ljava/lang/String;
    .registers 2

    .line 889
    iget-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->variantId_:Ljava/lang/String;

    return-object v0
.end method

.method public getVariantIdBytes()Lcom/google/protobuf/ByteString;
    .registers 2

    .line 901
    iget-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->variantId_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1786
    iget-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->experimentId_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    .line 1787
    invoke-virtual {p0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->getExperimentId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 1789
    :cond_10
    iget-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->variantId_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_20

    const/4 v0, 0x2

    .line 1790
    invoke-virtual {p0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->getVariantId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 1792
    :cond_20
    iget-wide v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->experimentStartTimeMillis_:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2c

    const/4 v4, 0x3

    .line 1793
    invoke-virtual {p1, v4, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 1795
    :cond_2c
    iget-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->triggerEvent_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3c

    const/4 v0, 0x4

    .line 1796
    invoke-virtual {p0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->getTriggerEvent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 1798
    :cond_3c
    iget-wide v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->triggerTimeoutMillis_:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_46

    const/4 v4, 0x5

    .line 1799
    invoke-virtual {p1, v4, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 1801
    :cond_46
    iget-wide v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->timeToLiveMillis_:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_50

    const/4 v2, 0x6

    .line 1802
    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 1804
    :cond_50
    iget-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->setEventToLog_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_60

    const/4 v0, 0x7

    .line 1805
    invoke-virtual {p0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->getSetEventToLog()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 1807
    :cond_60
    iget-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->activateEventToLog_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_71

    const/16 v0, 0x8

    .line 1808
    invoke-virtual {p0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->getActivateEventToLog()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 1810
    :cond_71
    iget-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->clearEventToLog_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_82

    const/16 v0, 0x9

    .line 1811
    invoke-virtual {p0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->getClearEventToLog()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 1813
    :cond_82
    iget-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->timeoutEventToLog_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_93

    const/16 v0, 0xa

    .line 1814
    invoke-virtual {p0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->getTimeoutEventToLog()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 1816
    :cond_93
    iget-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->ttlExpiryEventToLog_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a4

    const/16 v0, 0xb

    .line 1817
    invoke-virtual {p0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->getTtlExpiryEventToLog()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 1819
    :cond_a4
    iget v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->overflowPolicy_:I

    sget-object v1, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$ExperimentOverflowPolicy;->POLICY_UNSPECIFIED:Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$ExperimentOverflowPolicy;

    invoke-virtual {v1}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$ExperimentOverflowPolicy;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_b5

    const/16 v0, 0xc

    .line 1820
    iget v1, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->overflowPolicy_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    :cond_b5
    const/4 v0, 0x0

    .line 1822
    :goto_b6
    iget-object v1, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->ongoingExperiments_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v1}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v1

    if-ge v0, v1, :cond_ce

    const/16 v1, 0xd

    .line 1823
    iget-object v2, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->ongoingExperiments_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v2, v0}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_b6

    :cond_ce
    return-void
.end method
