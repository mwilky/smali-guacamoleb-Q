.class public Lcom/android/settingslib/net/NetworkCycleChartData;
.super Lcom/android/settingslib/net/NetworkCycleData;
.source "NetworkCycleChartData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/net/NetworkCycleChartData$Builder;
    }
.end annotation


# static fields
.field public static final BUCKET_DURATION_MS:J


# instance fields
.field private mUsageBuckets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/net/NetworkCycleData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/settingslib/net/NetworkCycleChartData;->BUCKET_DURATION_MS:J

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settingslib/net/NetworkCycleData;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settingslib/net/NetworkCycleChartData$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settingslib/net/NetworkCycleChartData;-><init>()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/settingslib/net/NetworkCycleChartData;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/net/NetworkCycleChartData;->mUsageBuckets:Ljava/util/List;

    return-object p1
.end method


# virtual methods
.method public getUsageBuckets()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settingslib/net/NetworkCycleData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settingslib/net/NetworkCycleChartData;->mUsageBuckets:Ljava/util/List;

    return-object v0
.end method
