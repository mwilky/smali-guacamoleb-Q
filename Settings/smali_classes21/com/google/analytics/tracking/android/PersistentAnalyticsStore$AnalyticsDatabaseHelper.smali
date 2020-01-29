.class Lcom/google/analytics/tracking/android/PersistentAnalyticsStore$AnalyticsDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "PersistentAnalyticsStore.java"


# annotations
.annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AnalyticsDatabaseHelper"
.end annotation


# instance fields
.field private mBadDatabase:Z

.field private mLastDatabaseCheckTime:J

.field final synthetic this$0:Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;


# direct methods
.method constructor <init>(Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore$AnalyticsDatabaseHelper;->this$0:Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p3, p1, v0}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore$AnalyticsDatabaseHelper;->mLastDatabaseCheckTime:J

    return-void
.end method

.method private tablePresent(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    const-string v3, "SQLITE_MASTER"

    const-string v2, "name"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "name=?"

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    aput-object p1, v6, v1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p2

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v0, v2

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error querying for table "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/analytics/tracking/android/Log;->w(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    return v1

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v1
.end method

.method private validateColumnsPresent(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5

    const-string v0, "SELECT * FROM hits2 WHERE 0"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_0

    aget-object v4, v2, v3

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    nop

    const-string v2, "hit_id"

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "hit_url"

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "hit_string"

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "hit_time"

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "hit_app_id"

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v2, :cond_1

    const-string v3, "ALTER TABLE hits2 ADD COLUMN hit_app_id"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    new-instance v3, Landroid/database/sqlite/SQLiteException;

    const-string v4, "Database has extra columns"

    invoke-direct {v3, v4}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_3
    new-instance v2, Landroid/database/sqlite/SQLiteException;

    const-string v3, "Database column missing"

    invoke-direct {v2, v3}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_0
    move-exception v2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v2
.end method


# virtual methods
.method public getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 4

    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore$AnalyticsDatabaseHelper;->mBadDatabase:Z

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore$AnalyticsDatabaseHelper;->mLastDatabaseCheckTime:J

    const-wide/32 v2, 0x36ee80

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore$AnalyticsDatabaseHelper;->this$0:Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;

    invoke-static {v2}, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->access$000(Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;)Lcom/google/analytics/tracking/android/Clock;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/analytics/tracking/android/Clock;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/database/sqlite/SQLiteException;

    const-string v1, "Database creation failed"

    invoke-direct {v0, v1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore$AnalyticsDatabaseHelper;->mBadDatabase:Z

    iget-object v1, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore$AnalyticsDatabaseHelper;->this$0:Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;

    invoke-static {v1}, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->access$000(Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;)Lcom/google/analytics/tracking/android/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/analytics/tracking/android/Clock;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore$AnalyticsDatabaseHelper;->mLastDatabaseCheckTime:J

    :try_start_0
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_1

    :catch_0
    move-exception v1

    iget-object v2, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore$AnalyticsDatabaseHelper;->this$0:Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;

    invoke-static {v2}, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->access$200(Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore$AnalyticsDatabaseHelper;->this$0:Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;

    invoke-static {v3}, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->access$100(Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :goto_1
    if-nez v0, :cond_2

    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore$AnalyticsDatabaseHelper;->mBadDatabase:Z

    return-object v0
.end method

.method isBadDatabase()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore$AnalyticsDatabaseHelper;->mBadDatabase:Z

    return v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/analytics/tracking/android/FutureApis;->setOwnerOnlyReadWrite(Ljava/lang/String;)Z

    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    const-string v1, "PRAGMA journal_mode=memory"

    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_0
    :goto_0
    const-string v0, "hits2"

    invoke-direct {p0, v0, p1}, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore$AnalyticsDatabaseHelper;->tablePresent(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->access$300()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-direct {p0, p1}, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore$AnalyticsDatabaseHelper;->validateColumnsPresent(Landroid/database/sqlite/SQLiteDatabase;)V

    :goto_1
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    return-void
.end method

.method setBadDatabase(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore$AnalyticsDatabaseHelper;->mBadDatabase:Z

    return-void
.end method
