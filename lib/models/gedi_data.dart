class GediData {
  GediData(
    this.id,
    this.whs,
    this.typeName,
    this.batchId,
    this.batchFileName,
    this.size,
    this.isDownload,
    this.lastUpdate,
  );

  final int id;
  final String whs;
  final String typeName;
  final String batchId;
  final String batchFileName;
  final double size;
  final bool isDownload;
  final DateTime lastUpdate;

  bool selected = false;
}
