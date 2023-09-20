// automatically generated by the FlatBuffers compiler, do not modify
// swiftlint:disable all
// swiftformat:disable all

import FlatBuffers

public struct com_openmeteo_api_result_CurrentWeather: NativeStruct, Verifiable, FlatbuffersInitializable {

  static func validateVersion() { FlatBuffersVersion_23_5_26() }

  private var _time: Int64
  private var _temperature: Float32
  private var _weathercode: Float32
  private var _windspeed: Float32
  private var _winddirection: Float32
  private var _isDay: Float32
  private let padding0__: UInt32 = 0

  public init(_ bb: ByteBuffer, o: Int32) {
    let _accessor = Struct(bb: bb, position: o)
    _time = _accessor.readBuffer(of: Int64.self, at: 0)
    _temperature = _accessor.readBuffer(of: Float32.self, at: 8)
    _weathercode = _accessor.readBuffer(of: Float32.self, at: 12)
    _windspeed = _accessor.readBuffer(of: Float32.self, at: 16)
    _winddirection = _accessor.readBuffer(of: Float32.self, at: 20)
    _isDay = _accessor.readBuffer(of: Float32.self, at: 24)
  }

  public init(time: Int64, temperature: Float32, weathercode: Float32, windspeed: Float32, winddirection: Float32, isDay: Float32) {
    _time = time
    _temperature = temperature
    _weathercode = weathercode
    _windspeed = windspeed
    _winddirection = winddirection
    _isDay = isDay
  }

  public init() {
    _time = 0
    _temperature = 0.0
    _weathercode = 0.0
    _windspeed = 0.0
    _winddirection = 0.0
    _isDay = 0.0
  }

  public var time: Int64 { _time }
  public var temperature: Float32 { _temperature }
  public var weathercode: Float32 { _weathercode }
  public var windspeed: Float32 { _windspeed }
  public var winddirection: Float32 { _winddirection }
  public var isDay: Float32 { _isDay }

  public static func verify<T>(_ verifier: inout Verifier, at position: Int, of type: T.Type) throws where T: Verifiable {
    try verifier.inBuffer(position: position, of: com_openmeteo_api_result_CurrentWeather.self)
  }
}

public struct com_openmeteo_api_result_CurrentWeather_Mutable: FlatBufferObject {

  static func validateVersion() { FlatBuffersVersion_23_5_26() }
  public var __buffer: ByteBuffer! { return _accessor.bb }
  private var _accessor: Struct

  public init(_ bb: ByteBuffer, o: Int32) { _accessor = Struct(bb: bb, position: o) }

  public var time: Int64 { return _accessor.readBuffer(of: Int64.self, at: 0) }
  public var temperature: Float32 { return _accessor.readBuffer(of: Float32.self, at: 8) }
  public var weathercode: Float32 { return _accessor.readBuffer(of: Float32.self, at: 12) }
  public var windspeed: Float32 { return _accessor.readBuffer(of: Float32.self, at: 16) }
  public var winddirection: Float32 { return _accessor.readBuffer(of: Float32.self, at: 20) }
  public var isDay: Float32 { return _accessor.readBuffer(of: Float32.self, at: 24) }
}

public struct com_openmeteo_api_result_Variable: FlatBufferObject, Verifiable {

  static func validateVersion() { FlatBuffersVersion_23_5_26() }
  public var __buffer: ByteBuffer! { return _accessor.bb }
  private var _accessor: Table

  private init(_ t: Table) { _accessor = t }
  public init(_ bb: ByteBuffer, o: Int32) { _accessor = Table(bb: bb, position: o) }

  private enum VTOFFSET: VOffset {
    case variable = 4
    case unit = 6
    case values = 8
    var v: Int32 { Int32(self.rawValue) }
    var p: VOffset { self.rawValue }
  }

  public var variable: String! { let o = _accessor.offset(VTOFFSET.variable.v); return _accessor.string(at: o) }
  public var variableSegmentArray: [UInt8]! { return _accessor.getVector(at: VTOFFSET.variable.v) }
  public var unit: String! { let o = _accessor.offset(VTOFFSET.unit.v); return _accessor.string(at: o) }
  public var unitSegmentArray: [UInt8]! { return _accessor.getVector(at: VTOFFSET.unit.v) }
  public var hasValues: Bool { let o = _accessor.offset(VTOFFSET.values.v); return o == 0 ? false : true }
  public var valuesCount: Int32 { let o = _accessor.offset(VTOFFSET.values.v); return o == 0 ? 0 : _accessor.vector(count: o) }
  public func values(at index: Int32) -> Float32 { let o = _accessor.offset(VTOFFSET.values.v); return o == 0 ? 0 : _accessor.directRead(of: Float32.self, offset: _accessor.vector(at: o) + index * 4) }
  public var values: [Float32] { return _accessor.getVector(at: VTOFFSET.values.v) ?? [] }
  public static func startVariable(_ fbb: inout FlatBufferBuilder) -> UOffset { fbb.startTable(with: 3) }
  public static func add(variable: Offset, _ fbb: inout FlatBufferBuilder) { fbb.add(offset: variable, at: VTOFFSET.variable.p) }
  public static func add(unit: Offset, _ fbb: inout FlatBufferBuilder) { fbb.add(offset: unit, at: VTOFFSET.unit.p) }
  public static func addVectorOf(values: Offset, _ fbb: inout FlatBufferBuilder) { fbb.add(offset: values, at: VTOFFSET.values.p) }
  public static func endVariable(_ fbb: inout FlatBufferBuilder, start: UOffset) -> Offset { let end = Offset(offset: fbb.endTable(at: start)); fbb.require(table: end, fields: [4, 6, 8]); return end }
  public static func createVariable(
    _ fbb: inout FlatBufferBuilder,
    variableOffset variable: Offset,
    unitOffset unit: Offset,
    valuesVectorOffset values: Offset
  ) -> Offset {
    let __start = com_openmeteo_api_result_Variable.startVariable(&fbb)
    com_openmeteo_api_result_Variable.add(variable: variable, &fbb)
    com_openmeteo_api_result_Variable.add(unit: unit, &fbb)
    com_openmeteo_api_result_Variable.addVectorOf(values: values, &fbb)
    return com_openmeteo_api_result_Variable.endVariable(&fbb, start: __start)
  }

  public static func verify<T>(_ verifier: inout Verifier, at position: Int, of type: T.Type) throws where T: Verifiable {
    var _v = try verifier.visitTable(at: position)
    try _v.visit(field: VTOFFSET.variable.p, fieldName: "variable", required: true, type: ForwardOffset<String>.self)
    try _v.visit(field: VTOFFSET.unit.p, fieldName: "unit", required: true, type: ForwardOffset<String>.self)
    try _v.visit(field: VTOFFSET.values.p, fieldName: "values", required: true, type: ForwardOffset<Vector<Float32, Float32>>.self)
    _v.finish()
  }
}

public struct com_openmeteo_api_result_Result: FlatBufferObject, Verifiable {

  static func validateVersion() { FlatBuffersVersion_23_5_26() }
  public var __buffer: ByteBuffer! { return _accessor.bb }
  private var _accessor: Table

  private init(_ t: Table) { _accessor = t }
  public init(_ bb: ByteBuffer, o: Int32) { _accessor = Table(bb: bb, position: o) }

  private enum VTOFFSET: VOffset {
    case latitude = 4
    case longitude = 6
    case elevation = 8
    case generationtimeMs = 10
    case utcOffsetSeconds = 12
    case timezone = 14
    case timezoneAbbreviation = 16
    case currentWeather = 18
    case timeStart = 20
    case daily = 22
    case hourly = 24
    case sixHourly = 26
    case minutely15 = 28
    var v: Int32 { Int32(self.rawValue) }
    var p: VOffset { self.rawValue }
  }

  public var latitude: Float32 { let o = _accessor.offset(VTOFFSET.latitude.v); return o == 0 ? 0.0 : _accessor.readBuffer(of: Float32.self, at: o) }
  public var longitude: Float32 { let o = _accessor.offset(VTOFFSET.longitude.v); return o == 0 ? 0.0 : _accessor.readBuffer(of: Float32.self, at: o) }
  public var elevation: Float32 { let o = _accessor.offset(VTOFFSET.elevation.v); return o == 0 ? 0.0 : _accessor.readBuffer(of: Float32.self, at: o) }
  public var generationtimeMs: Float32 { let o = _accessor.offset(VTOFFSET.generationtimeMs.v); return o == 0 ? 0.0 : _accessor.readBuffer(of: Float32.self, at: o) }
  public var utcOffsetSeconds: Int32 { let o = _accessor.offset(VTOFFSET.utcOffsetSeconds.v); return o == 0 ? 0 : _accessor.readBuffer(of: Int32.self, at: o) }
  public var timezone: String? { let o = _accessor.offset(VTOFFSET.timezone.v); return o == 0 ? nil : _accessor.string(at: o) }
  public var timezoneSegmentArray: [UInt8]? { return _accessor.getVector(at: VTOFFSET.timezone.v) }
  public var timezoneAbbreviation: String? { let o = _accessor.offset(VTOFFSET.timezoneAbbreviation.v); return o == 0 ? nil : _accessor.string(at: o) }
  public var timezoneAbbreviationSegmentArray: [UInt8]? { return _accessor.getVector(at: VTOFFSET.timezoneAbbreviation.v) }
  public var currentWeather: com_openmeteo_api_result_CurrentWeather? { let o = _accessor.offset(VTOFFSET.currentWeather.v); return o == 0 ? nil : _accessor.readBuffer(of: com_openmeteo_api_result_CurrentWeather.self, at: o) }
  public var mutableCurrentWeather: com_openmeteo_api_result_CurrentWeather_Mutable? { let o = _accessor.offset(VTOFFSET.currentWeather.v); return o == 0 ? nil : com_openmeteo_api_result_CurrentWeather_Mutable(_accessor.bb, o: o + _accessor.postion) }
  public var timeStart: Int64 { let o = _accessor.offset(VTOFFSET.timeStart.v); return o == 0 ? 0 : _accessor.readBuffer(of: Int64.self, at: o) }
  public var hasDaily: Bool { let o = _accessor.offset(VTOFFSET.daily.v); return o == 0 ? false : true }
  public var dailyCount: Int32 { let o = _accessor.offset(VTOFFSET.daily.v); return o == 0 ? 0 : _accessor.vector(count: o) }
  public func daily(at index: Int32) -> com_openmeteo_api_result_Variable? { let o = _accessor.offset(VTOFFSET.daily.v); return o == 0 ? nil : com_openmeteo_api_result_Variable(_accessor.bb, o: _accessor.indirect(_accessor.vector(at: o) + index * 4)) }
  public var hasHourly: Bool { let o = _accessor.offset(VTOFFSET.hourly.v); return o == 0 ? false : true }
  public var hourlyCount: Int32 { let o = _accessor.offset(VTOFFSET.hourly.v); return o == 0 ? 0 : _accessor.vector(count: o) }
  public func hourly(at index: Int32) -> com_openmeteo_api_result_Variable? { let o = _accessor.offset(VTOFFSET.hourly.v); return o == 0 ? nil : com_openmeteo_api_result_Variable(_accessor.bb, o: _accessor.indirect(_accessor.vector(at: o) + index * 4)) }
  public var hasSixHourly: Bool { let o = _accessor.offset(VTOFFSET.sixHourly.v); return o == 0 ? false : true }
  public var sixHourlyCount: Int32 { let o = _accessor.offset(VTOFFSET.sixHourly.v); return o == 0 ? 0 : _accessor.vector(count: o) }
  public func sixHourly(at index: Int32) -> com_openmeteo_api_result_Variable? { let o = _accessor.offset(VTOFFSET.sixHourly.v); return o == 0 ? nil : com_openmeteo_api_result_Variable(_accessor.bb, o: _accessor.indirect(_accessor.vector(at: o) + index * 4)) }
  public var hasMinutely15: Bool { let o = _accessor.offset(VTOFFSET.minutely15.v); return o == 0 ? false : true }
  public var minutely15Count: Int32 { let o = _accessor.offset(VTOFFSET.minutely15.v); return o == 0 ? 0 : _accessor.vector(count: o) }
  public func minutely15(at index: Int32) -> com_openmeteo_api_result_Variable? { let o = _accessor.offset(VTOFFSET.minutely15.v); return o == 0 ? nil : com_openmeteo_api_result_Variable(_accessor.bb, o: _accessor.indirect(_accessor.vector(at: o) + index * 4)) }
  public static func startResult(_ fbb: inout FlatBufferBuilder) -> UOffset { fbb.startTable(with: 13) }
  public static func add(latitude: Float32, _ fbb: inout FlatBufferBuilder) { fbb.add(element: latitude, def: 0.0, at: VTOFFSET.latitude.p) }
  public static func add(longitude: Float32, _ fbb: inout FlatBufferBuilder) { fbb.add(element: longitude, def: 0.0, at: VTOFFSET.longitude.p) }
  public static func add(elevation: Float32, _ fbb: inout FlatBufferBuilder) { fbb.add(element: elevation, def: 0.0, at: VTOFFSET.elevation.p) }
  public static func add(generationtimeMs: Float32, _ fbb: inout FlatBufferBuilder) { fbb.add(element: generationtimeMs, def: 0.0, at: VTOFFSET.generationtimeMs.p) }
  public static func add(utcOffsetSeconds: Int32, _ fbb: inout FlatBufferBuilder) { fbb.add(element: utcOffsetSeconds, def: 0, at: VTOFFSET.utcOffsetSeconds.p) }
  public static func add(timezone: Offset, _ fbb: inout FlatBufferBuilder) { fbb.add(offset: timezone, at: VTOFFSET.timezone.p) }
  public static func add(timezoneAbbreviation: Offset, _ fbb: inout FlatBufferBuilder) { fbb.add(offset: timezoneAbbreviation, at: VTOFFSET.timezoneAbbreviation.p) }
  public static func add(currentWeather: com_openmeteo_api_result_CurrentWeather?, _ fbb: inout FlatBufferBuilder) { guard let currentWeather = currentWeather else { return }; fbb.create(struct: currentWeather, position: VTOFFSET.currentWeather.p) }
  public static func add(timeStart: Int64, _ fbb: inout FlatBufferBuilder) { fbb.add(element: timeStart, def: 0, at: VTOFFSET.timeStart.p) }
  public static func addVectorOf(daily: Offset, _ fbb: inout FlatBufferBuilder) { fbb.add(offset: daily, at: VTOFFSET.daily.p) }
  public static func addVectorOf(hourly: Offset, _ fbb: inout FlatBufferBuilder) { fbb.add(offset: hourly, at: VTOFFSET.hourly.p) }
  public static func addVectorOf(sixHourly: Offset, _ fbb: inout FlatBufferBuilder) { fbb.add(offset: sixHourly, at: VTOFFSET.sixHourly.p) }
  public static func addVectorOf(minutely15: Offset, _ fbb: inout FlatBufferBuilder) { fbb.add(offset: minutely15, at: VTOFFSET.minutely15.p) }
  public static func endResult(_ fbb: inout FlatBufferBuilder, start: UOffset) -> Offset { let end = Offset(offset: fbb.endTable(at: start)); return end }
  public static func createResult(
    _ fbb: inout FlatBufferBuilder,
    latitude: Float32 = 0.0,
    longitude: Float32 = 0.0,
    elevation: Float32 = 0.0,
    generationtimeMs: Float32 = 0.0,
    utcOffsetSeconds: Int32 = 0,
    timezoneOffset timezone: Offset = Offset(),
    timezoneAbbreviationOffset timezoneAbbreviation: Offset = Offset(),
    currentWeather: com_openmeteo_api_result_CurrentWeather? = nil,
    timeStart: Int64 = 0,
    dailyVectorOffset daily: Offset = Offset(),
    hourlyVectorOffset hourly: Offset = Offset(),
    sixHourlyVectorOffset sixHourly: Offset = Offset(),
    minutely15VectorOffset minutely15: Offset = Offset()
  ) -> Offset {
    let __start = com_openmeteo_api_result_Result.startResult(&fbb)
    com_openmeteo_api_result_Result.add(latitude: latitude, &fbb)
    com_openmeteo_api_result_Result.add(longitude: longitude, &fbb)
    com_openmeteo_api_result_Result.add(elevation: elevation, &fbb)
    com_openmeteo_api_result_Result.add(generationtimeMs: generationtimeMs, &fbb)
    com_openmeteo_api_result_Result.add(utcOffsetSeconds: utcOffsetSeconds, &fbb)
    com_openmeteo_api_result_Result.add(timezone: timezone, &fbb)
    com_openmeteo_api_result_Result.add(timezoneAbbreviation: timezoneAbbreviation, &fbb)
    com_openmeteo_api_result_Result.add(currentWeather: currentWeather, &fbb)
    com_openmeteo_api_result_Result.add(timeStart: timeStart, &fbb)
    com_openmeteo_api_result_Result.addVectorOf(daily: daily, &fbb)
    com_openmeteo_api_result_Result.addVectorOf(hourly: hourly, &fbb)
    com_openmeteo_api_result_Result.addVectorOf(sixHourly: sixHourly, &fbb)
    com_openmeteo_api_result_Result.addVectorOf(minutely15: minutely15, &fbb)
    return com_openmeteo_api_result_Result.endResult(&fbb, start: __start)
  }

  public static func verify<T>(_ verifier: inout Verifier, at position: Int, of type: T.Type) throws where T: Verifiable {
    var _v = try verifier.visitTable(at: position)
    try _v.visit(field: VTOFFSET.latitude.p, fieldName: "latitude", required: false, type: Float32.self)
    try _v.visit(field: VTOFFSET.longitude.p, fieldName: "longitude", required: false, type: Float32.self)
    try _v.visit(field: VTOFFSET.elevation.p, fieldName: "elevation", required: false, type: Float32.self)
    try _v.visit(field: VTOFFSET.generationtimeMs.p, fieldName: "generationtimeMs", required: false, type: Float32.self)
    try _v.visit(field: VTOFFSET.utcOffsetSeconds.p, fieldName: "utcOffsetSeconds", required: false, type: Int32.self)
    try _v.visit(field: VTOFFSET.timezone.p, fieldName: "timezone", required: false, type: ForwardOffset<String>.self)
    try _v.visit(field: VTOFFSET.timezoneAbbreviation.p, fieldName: "timezoneAbbreviation", required: false, type: ForwardOffset<String>.self)
    try _v.visit(field: VTOFFSET.currentWeather.p, fieldName: "currentWeather", required: false, type: com_openmeteo_api_result_CurrentWeather.self)
    try _v.visit(field: VTOFFSET.timeStart.p, fieldName: "timeStart", required: false, type: Int64.self)
    try _v.visit(field: VTOFFSET.daily.p, fieldName: "daily", required: false, type: ForwardOffset<Vector<ForwardOffset<com_openmeteo_api_result_Variable>, com_openmeteo_api_result_Variable>>.self)
    try _v.visit(field: VTOFFSET.hourly.p, fieldName: "hourly", required: false, type: ForwardOffset<Vector<ForwardOffset<com_openmeteo_api_result_Variable>, com_openmeteo_api_result_Variable>>.self)
    try _v.visit(field: VTOFFSET.sixHourly.p, fieldName: "sixHourly", required: false, type: ForwardOffset<Vector<ForwardOffset<com_openmeteo_api_result_Variable>, com_openmeteo_api_result_Variable>>.self)
    try _v.visit(field: VTOFFSET.minutely15.p, fieldName: "minutely15", required: false, type: ForwardOffset<Vector<ForwardOffset<com_openmeteo_api_result_Variable>, com_openmeteo_api_result_Variable>>.self)
    _v.finish()
  }
}
